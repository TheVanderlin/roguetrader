/obj/machinery/computer/modular/preset
	var/list/default_software
	var/datum/computer_file/program/autorun_program
	base_type = /obj/machinery/computer/modular

/obj/machinery/computer/modular/preset/full
	uncreated_component_parts = list(
		/obj/item/stock_parts/power/apc,
		/obj/item/stock_parts/computer/card_slot,
		/obj/item/stock_parts/computer/ai_slot
		)

/obj/machinery/computer/modular/preset/aislot
	uncreated_component_parts = list(
		/obj/item/stock_parts/power/apc,
		/obj/item/stock_parts/computer/ai_slot
		)

/obj/machinery/computer/modular/preset/cardslot
	uncreated_component_parts = list(
		/obj/item/stock_parts/power/apc,
		/obj/item/stock_parts/computer/card_slot
		)

/obj/machinery/computer/modular/preset/Initialize()
	. = ..()
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		for(var/program_type in default_software)
			os.create_file(new program_type())
		if(autorun_program)
			os.set_autorun(initial(autorun_program.filename))

/obj/machinery/computer/modular/preset/engineering
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	icon_state = "reading"
	broken = "broken"
	default_software = list(
		/datum/computer_file/program/power_monitor,
		/datum/computer_file/program/supermatter_monitor,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmos_control,
		/datum/computer_file/program/rcon_console,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/shields_monitor
	)

/obj/machinery/computer/modular/preset/medical
	default_software = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/records,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/aislot/research
	default_software = list(
		/datum/computer_file/program/ntnetmonitor,
		/datum/computer_file/program/nttransfer,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/aidiag,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/aislot/sysadmin
	default_software = list(
		/datum/computer_file/program/ntnetmonitor,
		/datum/computer_file/program/nttransfer,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/aidiag,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/email_administration,
		/datum/computer_file/program/records,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/cardslot/command
	default_software = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/records,
		/datum/computer_file/program/docking,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/cardslot/command_sec
	default_software = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/records,
		/datum/computer_file/program/docking,
		/datum/computer_file/program/wordprocessor,
		/datum/computer_file/program/forceauthorization
	)

/obj/machinery/computer/modular/preset/cardslot/command_eng
	default_software = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/records,
		/datum/computer_file/program/docking,
		/datum/computer_file/program/wordprocessor,
		/datum/computer_file/program/power_monitor,
		/datum/computer_file/program/supermatter_monitor,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmos_control,
		/datum/computer_file/program/rcon_console,
		/datum/computer_file/program/shields_monitor
	)

/obj/machinery/computer/modular/preset/security
	default_software = list(
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/records,
		/datum/computer_file/program/forceauthorization,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/civilian
	default_software = list(
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/records,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/dock
	default_software = list(
		/datum/computer_file/program/reports,
		/datum/computer_file/program/camera_monitor,
		/datum/computer_file/program/records,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/docking,
		/datum/computer_file/program/deck_management
	)

/obj/machinery/computer/modular/preset/supply_public
	default_software = list(
		/datum/computer_file/program/records
	)
	autorun_program = /datum/computer_file/program/records

/obj/machinery/computer/modular/preset/full/ert
	default_software = list(
		/datum/computer_file/program/nttransfer,
		/datum/computer_file/program/camera_monitor/ert,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/comm,
		/datum/computer_file/program/aidiag,
		/datum/computer_file/program/records,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/full/merc
	default_software = list(
		/datum/computer_file/program/camera_monitor/hacked,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/aidiag
	)

/obj/machinery/computer/modular/preset/full/merc/Initialize()
	. = ..()
	emag_act(INFINITY)

/obj/machinery/computer/modular/preset/library
	default_software = list(
		/datum/computer_file/program/nttransfer,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/library,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/merchant
	default_software = list(
		/datum/computer_file/program/merchant,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/wordprocessor
	)

/obj/machinery/computer/modular/preset/filemanager
	default_software = list(
		/datum/computer_file/program/wordprocessor
	)
	autorun_program = /datum/computer_file/program/filemanager
