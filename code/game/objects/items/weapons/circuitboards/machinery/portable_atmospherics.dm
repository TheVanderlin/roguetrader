/obj/item/stock_parts/circuitboard/portable_scrubber
	name = "circuit board (portable scrubber)"
	board_type = "machine"
	build_path = /obj/machinery/portable_atmospherics/powered/scrubber
	origin_tech = list(TECH_ENGINEERING = 2, TECH_POWER = 2)
	req_components = list(
		/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/pipe = 2)
	additional_spawn_components = list(
		/obj/item/stock_parts/console_screen = 1,
		/obj/item/stock_parts/keyboard = 1,
		/obj/item/stock_parts/power/apc/buildable = 1,
		/obj/item/stock_parts/power/battery/buildable/stock = 1,
		/obj/item/cell/standard = 1
	)

/obj/item/stock_parts/circuitboard/portable_scrubber/pump
	name = "circuit board (portable pump)"
	board_type = "machine"
	build_path = /obj/machinery/portable_atmospherics/powered/pump

/obj/item/stock_parts/circuitboard/portable_scrubber/huge
	name = "circuit board (large portable scrubber)"
	board_type = "machine"
	build_path = /obj/machinery/portable_atmospherics/powered/scrubber/huge
	origin_tech = list(TECH_ENGINEERING = 3, TECH_POWER = 2, TECH_MATERIAL = 2)
	req_components = list(
							/obj/item/stock_parts/capacitor = 4,
							/obj/item/stock_parts/matter_bin = 2,
							/obj/item/pipe = 4)

/obj/item/stock_parts/circuitboard/portable_scrubber/huge/stationary
	name = "circuit board (large stationary portable scrubber)"
	board_type = "machine"
	build_path = /obj/machinery/portable_atmospherics/powered/scrubber/huge/stationary

/obj/item/stock_parts/circuitboard/tray
	name = "circuit board (hydroponics tray)"
	board_type = "machine"
	build_path = /obj/machinery/portable_atmospherics/hydroponics
	origin_tech = list(TECH_BIO = 2, TECH_MATERIAL = 2, TECH_DATA = 1)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/reagent_containers/glass/beaker = 1,
		/obj/item/weedkiller = 1,
		/obj/item/pipe = 2)
	additional_spawn_components = list(
		/obj/item/stock_parts/console_screen = 1,
		/obj/item/stock_parts/keyboard = 1,
		/obj/item/stock_parts/power/apc/buildable = 1
	)
