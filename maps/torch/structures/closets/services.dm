/*
 * Torch Service
 */
/singleton/closet_appearance/closet/torch/hydroponics
	color = COLOR_GRAY20
	decals = list(
		"lower_side_vent"
	)
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_GREEN_GRAY,
		"stripe_vertical_mid_partial" =   COLOR_GREEN_GRAY,
		"hydro" = COLOR_GREEN_GRAY
	)

/obj/structure/closet/chefcloset_torch
	name = "chef's closet"
	desc = "It's a storage unit for foodservice equipment."
	closet_appearance = /singleton/closet_appearance/wardrobe/black

/obj/structure/closet/chefcloset_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/mime,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/storage/box/mousetraps,
		/obj/item/clothing/under/rank/chef,
		/obj/item/clothing/head/chefhat,
		/obj/item/clothing/suit/chef/classic,
		/obj/item/storage/box/silverware,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/gloves/latex
	)

/obj/structure/closet/hydroponics_torch
	name = "hydroponics closet"
	desc = "It's a storage unit for gardening tools."
	closet_appearance = /singleton/closet_appearance/closet/torch/hydroponics

/obj/structure/closet/hydroponics_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/green,
		/obj/item/storage/plants,
		/obj/item/device/scanner/plant,
		/obj/item/material/minihoe,
		/obj/item/material/hatchet,
		/obj/item/wirecutters/clippers,
		/obj/item/reagent_containers/spray/plantbgone,
		new /datum/atom_creator/weighted(list(/obj/item/clothing/suit/apron, /obj/item/clothing/suit/apron/overalls)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/hydroponics, /obj/item/storage/backpack/satchel/hyd))
	)

/obj/structure/closet/jcloset_torch
	name = "custodial closet"
	desc = "It's a storage unit for janitorial equipment."
	closet_appearance = /singleton/closet_appearance/wardrobe/mixed

/obj/structure/closet/jcloset_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/purple,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight,
		/obj/item/caution = 4,
		/obj/item/device/lightreplacer,
		/obj/item/storage/bag/trash,
		/obj/item/clothing/shoes/galoshes,
		/obj/item/storage/box/detergent,
		/obj/item/soap,
		/obj/item/reagent_containers/glass/rag,
		/obj/item/storage/belt/janitor,
		/obj/item/clothing/glasses/hud/janitor,
		/obj/item/grenade/chem_grenade/cleaner = 2
	)

/obj/structure/closet/secure_closet/bar_torch
	name = "bar locker"
	desc = "It's a storage unit for bar equipment."
	req_access = list(access_dauntless)

/obj/structure/closet/secure_closet/bar_torch/WillContain()
	return list(
		/obj/item/clothing/head/soft/black,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/reagent_containers/food/drinks/shaker,
		/obj/item/glass_jar,
		/obj/item/book/manual/barman_recipes,
		/obj/item/clothing/under/rank/bartender,
		/obj/item/clothing/shoes/laceup
	)
