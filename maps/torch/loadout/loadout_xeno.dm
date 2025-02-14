/datum/gear/suit/lab_xyn_machine
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/gloves/dress/modified
	display_name = "modified gloves, dress"
	path = /obj/item/clothing/gloves/color/white/modified
	sort_category = "Xenowear"
	whitelisted = list(
		SPECIES_KROOT
	)

/datum/gear/gloves/duty/modified
	display_name = "modified gloves, duty"
	path = /obj/item/clothing/gloves/thick/duty/modified
	sort_category = "Xenowear"
	whitelisted = list(
		SPECIES_KROOT
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/suit/unathi/savage_hunter
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/skrell_helmet
	allowed_roles = ARMORED_ROLES

/datum/gear/uniform/harness
	allowed_branches = null

/datum/gear/shoes/clogs_toeless
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/shoes/flipflobsters_toeless
	allowed_branches = CIVILIAN_BRANCHES

// Patches
/datum/gear/accessory/cultex_patch
	display_name = "Cultural Exchange patch"
	path = /obj/item/clothing/accessory/solgov/cultex_patch
	description = "A shoulder patch representing the Explorator."
	allowed_branches = list(/datum/mil_branch/expeditionary_corps)
	whitelisted = list(
		SPECIES_TAU,
		SPECIES_KROOT,
		SPECIES_YEOSA,
		SPECIES_IPC
	)
	sort_category = "Xenowear"
	flags = GEAR_HAS_NO_CUSTOMIZATION
