/obj/item/crowbar
	name = "crowbar"
	desc = "A heavy crowbar of solid steel, good and solid in your hand."
	icon = 'icons/obj/tools/crowbar.dmi'
	icon_state = "crowbar"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT
	force = 27
	throwforce = 7
	throw_range = 3
	item_state = "crowbar"
	base_parry_chance = 15
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 140)
	center_of_mass = "x=16;y=20"
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")

/obj/item/crowbar/red
	icon_state = "red_crowbar"
	item_state = "crowbar_red"

/obj/item/crowbar/prybar
	name = "pry bar"
	desc = "A steel bar with a wedge. It comes in a variety of configurations and colours - collect them all."
	icon_state = "prybar_preview"
	item_state = "crowbar"
	force = 23
	throwforce = 6
	throw_range = 5
	base_parry_chance = 0
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_STEEL = 80)

	var/prybar_types = list("1","2","3","4","5")
	var/valid_colours = list(COLOR_RED_GRAY, COLOR_BLUE_GRAY, COLOR_BOTTLE_GREEN, COLOR_MAROON, COLOR_DARK_BROWN, COLOR_VIOLET, COLOR_GRAY20)

/obj/item/crowbar/prybar/Initialize()
	var/shape = pick(prybar_types)
	icon_state = "bar[shape]_handle"
	color = pick(valid_colours)
	AddOverlays(overlay_image(icon, "bar[shape]_hardware", flags=RESET_COLOR))
	. = ..()

/obj/item/crowbar/emergency_forcing_tool
	name = "emergency forcing tool"
	desc = "This is an emergency forcing tool, made of steel bar with a wedge on one end, and a hatchet on the other end. It has a blue plastic grip."
	icon_state = "emergency_forcing_tool"
	item_state = "emergency_forcing_tool"
	force = 21
	sharp = TRUE
	edge = TRUE
	throwforce = 6
	throw_range = 5
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_STEEL = 150)
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked", "attacked", "slashed", "torn", "ripped", "cut")


/obj/item/crowbar/emergency_forcing_tool/use_before(atom/target, mob/living/user, click_parameters)
	// Double damage against windows
	if (istype(target, /obj/structure/window))
		force = initial(force) * 2

	return ..()


/obj/item/crowbar/emergency_forcing_tool/use_after(atom/target, mob/living/user, click_parameters)
	// Reset force after window interactions
	if (istype(target, /obj/structure/window))
		force = initial(force)

	return ..()


/obj/item/crowbar/emergency_forcing_tool/IsCrowbar()
	if(ismob(loc))
		var/mob/M = loc
		if(M.a_intent && M.a_intent == I_HURT)
			return FALSE

	return TRUE
