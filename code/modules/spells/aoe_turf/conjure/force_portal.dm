/spell/aoe_turf/conjure/force_portal
	name = "Force Portal"
	desc = "Create a portal that sucks in anything that touches it and then shoots it all out at the end.."
	school = "conjuration"
	feedback = "FP"
	summon_type = list(/obj/force_portal)
	charge_max = 200
	spell_flags = Z2NOCAST
	range = 0
	cast_sound = null

	hud_state = "wiz_force"

/spell/aoe_turf/conjure/force_portal/tower
	charge_max = 2
	spell_flags = 0
