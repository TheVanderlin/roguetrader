/obj/item/storage/box/contraband
	name = "box"
	desc = "A sleek, sturdy box."
	icon_state = "box_of_doom"

//For uplink kits that provide bulkier items
/obj/item/storage/backpack/satchel/contraband
	desc = "A sleek, sturdy satchel."
	icon_state = "satchel-norm"

//In case an uplink kit provides a lot of gear
/obj/item/storage/backpack/dufflebag/contraband
	name = "black dufflebag"
	desc = "A sleek, sturdy dufflebag."
	icon_state = "duffle_syndie"

/obj/item/storage/box/contraband/imp_freedom
	startswith = list(/obj/item/implanter/freedom)

/obj/item/storage/box/contraband/imp_uplink
	startswith = list(/obj/item/implanter/uplink)

/obj/item/storage/box/contraband/imp_compress
	startswith = list(/obj/item/implanter/compressed)

/obj/item/storage/box/contraband/imp_explosive
	startswith = list(
		/obj/item/implanter/explosive,
		/obj/item/implantpad
		)

/obj/item/storage/box/contraband/imp_imprinting
	startswith = list(
		/obj/item/implanter/imprinting,
		/obj/item/implantpad,
		/obj/item/reagent_containers/hypospray/autoinjector/mindbreaker
		)

/obj/item/storage/box/contraband/shuriken
	startswith = list(
		/obj/item/material/star/ninja,
		/obj/item/material/star/ninja,
		/obj/item/material/star/ninja,
		/obj/item/material/star/ninja,
		/obj/item/material/star/ninja,
		/obj/item/material/star/ninja,
	)

/obj/item/storage/fancy/smokable/case/syndiecoins
	startswith = list(
		/obj/item/material/coin/challenge/syndie = 5
	)

// Space suit uplink kit
/obj/item/storage/backpack/satchel/contraband/space
	//name = "\improper EVA gear pack"

	startswith = list(
		/obj/item/clothing/suit/space/void/merc,
		/obj/item/clothing/head/helmet/space/void/merc,
		/obj/item/clothing/mask/gas/syndicate,
		/obj/item/tank/oxygen_emergency_double,
		)

// Chameleon uplink kit
/obj/item/storage/backpack/chameleon/sydie_kit
	startswith = list(
		/obj/item/clothing/under/chameleon,
		/obj/item/clothing/shoes/chameleon,
		/obj/item/clothing/mask/chameleon,
		/obj/item/storage/box/contraband/chameleon,
		)

/obj/item/storage/box/contraband/chameleon
	startswith = list(
		/obj/item/clothing/gloves/chameleon,
		/obj/item/clothing/glasses/chameleon,
		/obj/item/device/radio/headset/chameleon,
		/obj/item/clothing/accessory/chameleon,
		/obj/item/clothing/accessory/chameleon,
		/obj/item/clothing/accessory/chameleon
		)

// Clerical uplink kit
/obj/item/storage/backpack/satchel/contraband/clerical
	startswith = list(
		/obj/item/stack/package_wrap/cargo_wrap,
		/obj/item/hand_labeler,
		/obj/item/stamp/chameleon,
		/obj/item/pen/chameleon,
		/obj/item/device/destTagger,
		)

/obj/item/storage/box/contraband/spy
	startswith = list(
		/obj/item/device/spy_bug = 6,
		/obj/item/device/spy_monitor
	)

/obj/item/storage/box/contraband/silenced
	startswith = list(
		/obj/item/gun/projectile/pistol/holdout,
		/obj/item/silencer,
		/obj/item/ammo_magazine/pistol/small
	)

/obj/item/storage/backpack/satchel/contraband/revolver
	startswith = list(
		/obj/item/gun/projectile/revolver/imperial,
		/obj/item/ammo_magazine/speedloader/revolver
	)

/obj/item/storage/box/contraband/toxin
	startswith = list(
		/obj/item/reagent_containers/glass/beaker/vial/random/toxin,
		/obj/item/reagent_containers/syringe
	)

/obj/item/storage/box/contraband/syringegun
	startswith = list(
		/obj/item/gun/launcher/syringe/disguised = 1,
		/obj/item/syringe_cartridge = 4,
		/obj/item/reagent_containers/syringe = 4
	)

/obj/item/storage/box/contraband/cigarette
	name = "tricky smokes"
	desc = "Smokes so good, you'd think it was a trick!"
	startswith = list(
		/obj/item/flame/lighter/zippo = 1,
		/obj/item/storage/fancy/smokable/antag/fire = 2,
		/obj/item/storage/fancy/smokable/antag/smoke = 2,
		/obj/item/storage/fancy/smokable/antag/mindbreaker = 1,
		/obj/item/storage/fancy/smokable/antag/tricordrazine = 1
	)


//Rig Electrowarfare and Voice Synthesiser kit
/obj/item/storage/backpack/satchel/contraband/ewar_voice
	startswith = list(
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/voice,
		)

/obj/item/storage/secure/briefcase/heavysniper
	startswith = list(
		/obj/item/gun/projectile/heavysniper,
		/obj/item/storage/box/ammo/sniperammo
	)

/obj/item/storage/secure/briefcase/heavysniper/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/storage/secure/briefcase/money

	startswith = list(/obj/item/spacecash/bundle/c1000 = 10)

/obj/item/storage/secure/briefcase/money2

	startswith = list(/obj/item/spacecash/bundle/c1000 = 5)

/obj/item/storage/backpack/satchel/contraband/armor
	startswith = list(
		/obj/item/clothing/suit/armor/grim/merc,
		/obj/item/clothing/head/helmet/merc
	)
/obj/item/storage/box/contraband/corpse_cube
	startswith = list(
		/obj/item/device/dna_sampler,
		/obj/item/reagent_containers/food/snacks/corpse_cube
	)
