/singleton/psionic_faculty/telekinesis
	id = PSI_TELEKINESIS
	name = "telekinesis"
	associated_intent = I_GRAB
	armour_types = list("melee", "bullet")

/singleton/psionic_power/telekinesis
	faculty = PSI_TELEKINESIS
	use_manifest = TRUE
	use_sound = null
	abstract_type = /singleton/psionic_power/telekinesis

/singleton/psionic_power/telekinesis/psiblade
	name =            "Psiblade"
	cost =            10
	cooldown =        30
	min_rank =        PSI_RANK_IOTA
	use_description = "Click on or otherwise activate an empty hand while on harm intent to manifest a psychokinetic cutting blade. The power the blade will vary based on your mastery of the faculty."
	admin_log = FALSE

/singleton/psionic_power/telekinesis/psiblade/invoke(mob/living/user, mob/living/target)
	if((target && user != target) || user.a_intent != I_HURT)
		return FALSE
	. = ..()
	if(.)
		switch(user.psi.get_rank(faculty))
			if(PSI_RANK_ALPHA)
				return new /obj/item/psychic_power/psiblade/alpha(user, user)
			if(PSI_RANK_BETA)
				return new /obj/item/psychic_power/psiblade/beta(user, user)
			if(PSI_RANK_GAMMA)
				return new /obj/item/psychic_power/psiblade/gamma(user, user)
			if(PSI_RANK_DELTA)
				return new /obj/item/psychic_power/psiblade/delta(user, user)
			if(PSI_RANK_ZETA)
				return new /obj/item/psychic_power/psiblade/zeta(user, user)
			else
				return new /obj/item/psychic_power/psiblade(user, user)

/singleton/psionic_power/telekinesis/tinker
	name =            "Tinker"
	cost =            5
	cooldown =        10
	min_rank =        PSI_RANK_ZETA
	use_description = "Click on or otherwise activate an empty hand while on help intent to manifest a telekinetic tool. Use it in-hand to switch between tool types."
	admin_log = FALSE

/singleton/psionic_power/telekinesis/tinker/invoke(mob/living/user, mob/living/target)
	if((target && user != target) || user.a_intent != I_HELP)
		return FALSE
	. = ..()
	if(.)
		return new /obj/item/psychic_power/tinker(user)

/singleton/psionic_power/telekinesis/telekinesis
	name =            "Telekinesis"
	cost =            5
	cooldown =        10
	use_ranged =      TRUE
	use_manifest =    FALSE
	min_rank =        PSI_RANK_DELTA
	use_description = "Click on a distant target while on grab intent to manifest a psychokinetic grip. Use it manipulate objects at a distance."
	admin_log = FALSE
	use_sound = 'sound/effects/psi/power_used.ogg'
	var/static/list/valid_machine_types = list(
		/obj/machinery/door
	)

/singleton/psionic_power/telekinesis/telekinesis/invoke(mob/living/user, mob/living/target)
	if(user.a_intent != I_GRAB)
		return FALSE
	. = ..()
	if(.)

		var/distance = get_dist(user, target)
		if(distance > user.psi.get_rank(PSI_TELEKINESIS))
			to_chat(user, SPAN_WARNING("Your telekinetic power won't reach that far."))
			return FALSE

		if(istype(target, /mob) || istype(target, /obj))
			var/obj/item/psychic_power/telekinesis/tk = new(user)
			if(tk.set_focus(target))
				tk.sparkle()
				user.visible_message(SPAN_NOTICE("\The [user] reaches out."))
				return tk
		else if(istype(target, /obj/structure))
			user.visible_message(SPAN_NOTICE("\The [user] makes a strange gesture."))
			var/obj/O = target
			O.attack_hand(user)
			return TRUE
		else if(istype(target, /obj/machinery))
			for(var/mtype in valid_machine_types)
				if(istype(target, mtype))
					var/obj/machinery/machine = target
					machine.attack_hand(user)
					return TRUE
	return FALSE
