//This one's from bay12
/obj/machinery/vending/engineering
	name = "\improper Robco Tool Maker"
	desc = "Everything you need for do-it-yourself repair."
	icon_state = "engi"
	icon_deny = "engi-deny"
	icon_vend = "engi-vend"
	base_type = /obj/machinery/vending/engineering
	req_access = null
	antag_slogans = {"\
		Equipping you with the necessary tools to destroy Sol!;\
		Remember, that catwalk you're trusting your life to was installed by an Imperial Engineer! The horror!;\
		Our crowbars are great for hiding loot, breaking into offices, and bashing skulls in!;\
		That can't call dibs on the RCD if they're already dead!;\
		All of these tools look better embedded in a Solar's head!\
	"}
	products = list(
		/obj/item/reagent_containers/food/drinks/bottle/oiljug = 6,
		/obj/item/storage/belt/utility = 3,
		/obj/item/clothing/glasses/meson = 2,
		/obj/item/clothing/gloves/insulated = 3,
		/obj/item/screwdriver = 8,
		/obj/item/crowbar = 8,
		/obj/item/wirecutters = 8,
		/obj/item/device/multitool = 4,
		/obj/item/wrench = 8,
		/obj/item/device/t_scanner = 5,
		/obj/item/cell/standard = 4,
		/obj/item/weldingtool = 6,
		/obj/item/clothing/head/welding = 4,
		/obj/item/light/tube = 10,
		/obj/item/stock_parts/scanning_module = 5,
		/obj/item/stock_parts/micro_laser = 5,
		/obj/item/stock_parts/matter_bin = 5,
		/obj/item/stock_parts/manipulator = 5,
		/obj/item/stock_parts/console_screen = 5,
		/obj/item/stock_parts/capacitor = 5,
		/obj/item/stock_parts/keyboard = 5,
		/obj/item/stock_parts/power/apc/buildable = 7
	)
	rare_products = list(
		/obj/item/device/suit_sensor_jammer = 50,
		/obj/item/device/radio/intercept = 25
	)
	contraband = list(
		/obj/item/rcd_ammo = 3
	)
	antag = list(
		/obj/item/device/encryptionkey/syndicate = 2,
		/obj/item/device/suit_sensor_jammer = 1,
		/obj/item/device/radio/intercept = 1
	)
