/spell/tear_veil
	name = "Tear Veil"
	desc = "Use your mental strength to literally tear a hole from this dimension to the next, letting things through..."

	charge_max = 300
	spell_flags = Z2NOCAST
	invocation = "none"
	invocation_type = SpI_NONE

	number_of_channels = 0
	time_between_channels = 200
	hud_state = "const_floor"
	cast_sound = 'sound/effects/meteorimpact.ogg'
	var/list/possible_spawns = list(
		/mob/living/simple_animal/hostile/daemon,
		/mob/living/simple_animal/hostile/daemon/hulk,
		/mob/living/simple_animal/hostile/daemon/zygote/worm
		)

/spell/tear_veil/choose_targets()
	var/turf/T = get_turf(holder)
	holder.visible_message(SPAN_NOTICE("A strange portal rips open underneath \the [holder]!"))
	var/obj/gateway/hole = new(get_turf(T))
	hole.density = FALSE
	return list(hole)

/spell/tear_veil/cast(list/targets, mob/holder, channel_count)
	if(channel_count == 1)
		return
	var/type = pick(possible_spawns)
	var/mob/living/L = new type(get_turf(targets[1]))
	L.faction = holder.faction
	L.visible_message(SPAN_WARNING("\A [L] escapes from the portal!"))

/spell/tear_veil/after_spell(list/targets)
	qdel(targets[1])
	return
