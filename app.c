/***************************************************************************//**
 * @file
 * @brief Application code
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/* C Standard Library headers */
#include <stdio.h>

/* Bluetooth stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "gatt_db.h"
#include "mesh_generic_model_capi_types.h"
#include "mesh_lib.h"

/* GPIO peripheral library */
#include <em_gpio.h>
#include "src/Timer_Module.h"
/* Own header */
#include "app.h"
#include "src/display.h"
#include "src/ble_mesh_device_type.h"
/// Flag for indicating DFU Reset must be performed
static uint8_t boot_to_dfu = 0;
extern uint8_t flag;
uint8_t button_state=0x00;
volatile uint8_t buffer_button[1]={0};
extern volatile uint8_t Gpio_flag;
/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

/*******************************************************************************
 * Initialize used bgapi classes for server.
 ******************************************************************************/
void gecko_bgapi_classes_init_server_friend(void)
{
  gecko_bgapi_class_dfu_init();
  gecko_bgapi_class_system_init();
  gecko_bgapi_class_le_gap_init();
  gecko_bgapi_class_le_connection_init();
  //gecko_bgapi_class_gatt_init();
  gecko_bgapi_class_gatt_server_init();
  gecko_bgapi_class_hardware_init();
  gecko_bgapi_class_flash_init();
  gecko_bgapi_class_test_init();
  //gecko_bgapi_class_sm_init();
  gecko_bgapi_class_mesh_node_init();
  //gecko_bgapi_class_mesh_prov_init();
  gecko_bgapi_class_mesh_proxy_init();
  gecko_bgapi_class_mesh_proxy_server_init();
  //gecko_bgapi_class_mesh_proxy_client_init();
  //gecko_bgapi_class_mesh_generic_client_init();
  gecko_bgapi_class_mesh_generic_server_init();
  //gecko_bgapi_class_mesh_vendor_model_init();
  //gecko_bgapi_class_mesh_health_client_init();
  //gecko_bgapi_class_mesh_health_server_init();
  //gecko_bgapi_class_mesh_test_init();
  //gecko_bgapi_class_mesh_lpn_init();
  gecko_bgapi_class_mesh_friend_init();
  gecko_bgapi_class_mesh_lc_server_init();
  gecko_bgapi_class_mesh_lc_setup_server_init();
  gecko_bgapi_class_mesh_scene_server_init();
  gecko_bgapi_class_mesh_scene_setup_server_init();
}


/*******************************************************************************
 * Initialize used bgapi classes for server.
 ******************************************************************************/
void gecko_bgapi_classes_init_client_lpn(void)
{
	gecko_bgapi_class_dfu_init();
	gecko_bgapi_class_system_init();
	gecko_bgapi_class_le_gap_init();
	gecko_bgapi_class_le_connection_init();
	//gecko_bgapi_class_gatt_init();
	gecko_bgapi_class_gatt_server_init();
	gecko_bgapi_class_hardware_init();
	gecko_bgapi_class_flash_init();
	gecko_bgapi_class_test_init();
	//gecko_bgapi_class_sm_init();
	gecko_bgapi_class_mesh_node_init();
	//gecko_bgapi_class_mesh_prov_init();
	gecko_bgapi_class_mesh_proxy_init();
	gecko_bgapi_class_mesh_proxy_server_init();
	//gecko_bgapi_class_mesh_proxy_client_init();
	gecko_bgapi_class_mesh_generic_client_init();
	//gecko_bgapi_class_mesh_generic_server_init();
	//gecko_bgapi_class_mesh_vendor_model_init();
	//gecko_bgapi_class_mesh_health_client_init();
	//gecko_bgapi_class_mesh_health_server_init();
	//gecko_bgapi_class_mesh_test_init();
	gecko_bgapi_class_mesh_lpn_init();
	//gecko_bgapi_class_mesh_friend_init();
	gecko_bgapi_class_mesh_scene_client_init();
}

/*******************************************************************************
 * Handling of stack events. Both Bluetooth LE and Bluetooth mesh events
 * are handled here.
 * @param[in] evt_id  Incoming event ID.
 * @param[in] evt     Pointer to incoming event.
 ******************************************************************************/
/**************************** INSTRUCTIONS ************************************
 * 1. Before proceeding with assignment profile the project with attached blue
 * gecko and verify if it is being scanned by mobile mesh App.
 * 2. Use Bluetooth Mesh app from Silicon labs for the same and if you are not
 * able to get the app working checkout nRF Mesh App on play store.
 * 3. Add the necessary events for the mesh in switch (evt_id) similar to the
 * BLE assignments.
 * 4. Use the following pdf for reference
 * https://www.silabs.com/documents/public/reference-manuals/bluetooth-le-and-mesh-software-api-reference-manual.pdf
 * 5. Remember to check and log the return status for every Mesh API used.
 * 6. You can take the hints from light and switch example for mesh to know which
 * commands and events are needed and to understand the flow.
 ******************************************************************************/
void handle_ecen5823_gecko_event(uint32_t evt_id, struct gecko_cmd_packet *evt)
{
  if (NULL == evt) {
    return;
  }

  switch (evt_id) {
    case gecko_evt_system_boot_id:
    	gecko_cmd_mesh_node_init();
#if DEVICE_IS_ONOFF_PUBLISHER
    	displayPrintf(DISPLAY_ROW_NAME,"Publisher");
#else
    	displayPrintf(DISPLAY_ROW_NAME,"Subscriber");
#endif
      bd_addr adr=gecko_cmd_system_get_bt_address()->address;
	  char tem[18];
	  sprintf(tem,"%x:%x:%x:%x:%x:%x",adr.addr[5],adr.addr[4],adr.addr[3],adr.addr[2],adr.addr[1], adr.addr[0]);
	  displayPrintf(DISPLAY_ROW_BTADDR,tem);
      break;

    case gecko_evt_mesh_node_initialized_id:
    	if(evt->data.evt_mesh_node_initialized.provisioned && DeviceUsesClientModel())
    	{
    		gecko_cmd_mesh_generic_client_init();
    	}
    	else if(evt->data.evt_mesh_node_initialized.provisioned && DeviceUsesServerModel())
    	{
    		gecko_cmd_mesh_generic_server_init();
    	}
    	if(evt->data.evt_mesh_node_initialized.provisioned && DeviceIsOnOffPublisher())
    	{
    		mesh_lib_init(malloc,free,8);
    	}
    	else if(evt->data.evt_mesh_node_initialized.provisioned && DeviceIsOnOffSubscriber())
    	{
    		mesh_lib_init(malloc,free,9);
    		//mesh_lib_generic_server_register_handler();
    		//mesh_lib_generic_server_update();
    		//mesh_lib_generic_server_publish();
    	}
    	if(!evt->data.evt_mesh_node_initialized.provisioned)
    	{
    	  gecko_cmd_mesh_node_start_unprov_beaconing(0x3);   // enable ADV and GATT provisioning bearer
    	  displayPrintf(DISPLAY_ROW_ACTION,"Unprovisioned");
    	}
    	  break;

    case gecko_evt_hardware_soft_timer_id:
    	break;

    case gecko_evt_mesh_node_provisioned_id:
    	displayPrintf(DISPLAY_ROW_ACTION,"Provisioned");
    	break;

    case gecko_evt_mesh_node_provisioning_failed_id:
    	displayPrintf(DISPLAY_ROW_ACTION,"Provision Fail");
    	break;

    case gecko_evt_mesh_node_provisioning_started_id:
    	displayPrintf(DISPLAY_ROW_ACTION,"Provisioning");
        break;

    case gecko_evt_mesh_generic_server_client_request_id:
    	if(DeviceUsesServerModel())
    	{
    		//mesh_lib_generic_server_event_handler();
    	}
		break;

    case gecko_evt_mesh_generic_server_state_changed_id:
    	if(DeviceUsesServerModel())
    	{
    		//mesh_lib_generic_server_event_handler();
    	}
    	break;

    case gecko_evt_le_connection_opened_id:
    	displayPrintf(DISPLAY_ROW_CONNECTION,"Connected");
    	break;

    case gecko_evt_mesh_node_reset_id:
    	break;

    case gecko_evt_le_connection_closed_id:
      /* Check if need to boot to dfu mode */
    	displayPrintf(DISPLAY_ROW_CONNECTION,"");
      if (boot_to_dfu) {
        /* Enter to DFU OTA mode */
        gecko_cmd_system_reset(2);
      }
      break;

    case gecko_evt_gatt_server_user_write_request_id:
      if (evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_ota_control) {
        /* Set flag to enter to OTA mode */
        boot_to_dfu = 1;
        /* Send response to Write Request */
        gecko_cmd_gatt_server_send_user_write_response(
          evt->data.evt_gatt_server_user_write_request.connection,
          gattdb_ota_control,
          bg_err_success);

        /* Close connection to enter to DFU OTA mode */
        gecko_cmd_le_connection_close(evt->data.evt_gatt_server_user_write_request.connection);
      }
      break;

    case gecko_evt_system_external_signal_id:
		flag=1;
		if(Gpio_flag == 0)
		{
		   //BTSTACK_CHECK_RESPONSE(gecko_cmd_gatt_server_send_characteristic_notification(0xFF, gattdb_button_state, 5, buffer_button));
			buffer_button[0]=0;
			button_state=0;
		}
		else if(Gpio_flag == 1)
		{
			//BTSTACK_CHECK_RESPONSE(gecko_cmd_gatt_server_send_characteristic_notification(0xFF, gattdb_button_state, 5, buffer_button));
			buffer_button[0]=1;
			button_state=1;
			//gecko_cmd_sm_passkey_confirm(evt->data.evt_sm_confirm_passkey.connection,1);
		}
		break;
  }
}

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */
