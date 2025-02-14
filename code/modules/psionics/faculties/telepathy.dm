/singleton/psionic_faculty/telepathy
	id = PSI_TELEPATHY
	name = "telepathy"
	associated_intent = I_DISARM
	armour_types = list(DAMAGE_PSIONIC)

/singleton/psionic_power/telepathy
	faculty = PSI_TELEPATHY
	abstract_type = /singleton/psionic_power/telepathy

/singleton/psionic_power/telepathy/invoke(mob/living/user, mob/living/target)
	if (!istype(target))
		to_chat(user, SPAN_WARNING("You cannot mentally attack \the [target]."))
		return FALSE

	. = ..()
	if(. && target.deflect_psionic_attack(user))
		return FALSE

/singleton/psionic_power/telepathy/blindstrike
	name =           "Blindstrike"
	cost =           8
	cooldown =       120
	use_ranged =     TRUE
	use_melee =      TRUE
	min_rank =       PSI_RANK_DELTA
	use_description = "Target the eyes or mouth on disarm intent and click anywhere to use a radial attack that blinds, deafens and disorients everyone near you."

/singleton/psionic_power/telepathy/blindstrike/invoke(mob/living/user, mob/living/target)
	if(user.zone_sel.selecting != BP_MOUTH && user.zone_sel.selecting != BP_EYES)
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [user] suddenly throws back their head, as though screaming silently!"))
		to_chat(user, SPAN_DANGER("You strike at all around you with a deafening psionic scream!"))
		for(var/mob/living/M in orange(user, user.psi.get_rank(PSI_TELEPATHY)))
			if(M == user)
				continue
			var/blocked = 100 * M.get_blocked_ratio(null, DAMAGE_PSIONIC)
			if(prob(blocked))
				to_chat(M, SPAN_DANGER("A psionic onslaught strikes your mind, but you withstand it!"))
				continue
			if(prob(60) && iscarbon(M))
				var/mob/living/carbon/C = M
				if(C.can_feel_pain())
					M.emote("scream")
			to_chat(M, SPAN_DANGER("Your senses are blasted into oblivion by a psionic scream!"))
			M.flash_eyes()
			M.eye_blind = max(M.eye_blind,3)
			M.ear_deaf = max(M.ear_deaf,6)
			M.set_confused(rand(3, 8))
		return TRUE

/singleton/psionic_power/telepathy/mindread
	name =            "Read Mind"
	cost =            6
	cooldown =        80
	use_melee =       TRUE
	min_rank =        PSI_RANK_IOTA
	use_description = "Target the head on disarm intent at melee range to attempt to read a victim's surface thoughts."

/singleton/psionic_power/telepathy/mindread/invoke(mob/living/user, mob/living/target)
	if(!isliving(target) || !istype(target) || user.zone_sel.selecting != BP_HEAD)
		return FALSE
	. = ..()
	if(!.)
		return

	if(target.stat == DEAD || (target.status_flags & FAKEDEATH) || !target.client)
		to_chat(user, SPAN_WARNING("\The [target] is in no state for a mind-ream."))
		return TRUE

	user.visible_message(SPAN_WARNING("\The [user] touches \the [target]'s temple..."))
	var/question =  input(user, "Say something?", "Read Mind", "Penny for your thoughts?") as null|text
	if(!question || user.incapacitated() || !do_after(user, 2 SECONDS, target, DO_DEFAULT | DO_USER_UNIQUE_ACT))
		return TRUE

	var/started_mindread = world.time
	to_chat(user, SPAN_NOTICE("<b>You dip your mentality into the surface layer of \the [target]'s mind, seeking an answer: <i>[question]</i></b>"))
	to_chat(target, SPAN_NOTICE("<b>Your mind is compelled to answer: <i>[question]</i></b>"))

	var/answer =  input(target, question, "Read Mind") as null|text
	if(!answer || world.time > started_mindread + 60 SECONDS || user.stat != CONSCIOUS || target.stat == DEAD)
		to_chat(user, SPAN_NOTICE("<b>You receive nothing useful from \the [target].</b>"))
	else
		to_chat(user, SPAN_NOTICE("<b>You skim thoughts from the surface of \the [target]'s mind: <i>[answer]</i></b>"))
	msg_admin_attack("[key_name(user)] read mind of [key_name(target)] with question \"[question]\" and [answer?"got answer \"[answer]\".":"got no answer."]")
	return TRUE

/singleton/psionic_power/telepathy/agony
	name =          "Agony"
	cost =          8
	cooldown =      50
	use_melee =     TRUE
	min_rank =      PSI_RANK_ZETA
	use_description = "Target the chest or groin on disarm intent to use a melee attack equivalent to a strike from a stun baton."

/singleton/psionic_power/telepathy/agony/invoke(mob/living/user, mob/living/target)
	if(!istype(target))
		return FALSE
	if(user.zone_sel.selecting != BP_CHEST && user.zone_sel.selecting != BP_GROIN)
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [target] has been struck by \the [user]!"))
		playsound(user.loc, 'sound/weapons/Egloves.ogg', 50, 1, -1)
		target.stun_effect_act(0, 60, user.zone_sel.selecting)
		return TRUE

/singleton/psionic_power/telepathy/spasm
	name =           "Spasm"
	cost =           15
	cooldown =       100
	use_melee =      TRUE
	use_ranged =     TRUE
	min_rank =       PSI_RANK_ZETA
	use_description = "Target the arms or hands on disarm intent to use a ranged attack that may rip the weapons away from the target."

/singleton/psionic_power/telepathy/spasm/invoke(mob/living/user, mob/living/carbon/human/target)
	if(!istype(target))
		return FALSE

	if(!(user.zone_sel.selecting in list(BP_L_ARM, BP_R_ARM, BP_L_HAND, BP_R_HAND)))
		return FALSE

	. = ..()

	if(.)
		to_chat(user, SPAN_DANGER("You lash out, stabbing into \the [target] with a lance of psi-power."))
		to_chat(target, SPAN_DANGER("The muscles in your arms cramp horrendously!"))
		if(prob(75))
			target.emote("scream")
		for (var/obj/item/item as anything in target.GetAllHeld())
			if (item.simulated && prob(75) && target.unEquip(item))
				target.visible_message(SPAN_DANGER("\The [target] drops \the [item] as their hand spasms!"))
		return TRUE

/singleton/psionic_power/telepathy/mindslave
	name =          "Mindslave"
	cost =          28
	cooldown =      200
	use_grab =      TRUE
	min_rank =      PSI_RANK_GAMMA
	use_description = "Grab a victim, target the eyes, then use the grab on them while on disarm intent, in order to convert them into a loyal mind-slave. The process takes some time, and failure is punished harshly."

/singleton/psionic_power/telepathy/mindslave/invoke(mob/living/user, mob/living/target)
	if(!istype(target) || user.zone_sel.selecting != BP_EYES)
		return FALSE
	. = ..()
	if(.)
		if(target.stat == DEAD || (target.status_flags & FAKEDEATH))
			to_chat(user, SPAN_WARNING("\The [target] is dead!"))
			return TRUE
		if(!target.mind || !target.key)
			to_chat(user, SPAN_WARNING("\The [target] is mindless!"))
			return TRUE
		if(GLOB.thralls.is_antagonist(target.mind))
			to_chat(user, SPAN_WARNING("\The [target] is already in thrall to someone!"))
			return TRUE
		user.visible_message(SPAN_DANGER("<i>\The [user] seizes the head of \the [target] in both hands...</i>"))
		to_chat(user, SPAN_WARNING("You plunge your mentality into that of \the [target]..."))
		to_chat(target, SPAN_DANGER("Your mind is invaded by the presence of \the [user]! They are trying to make you a slave!"))
		if(!do_after(user, (target.stat == CONSCIOUS ? 8 : 4) SECONDS, target, DO_DEFAULT | DO_USER_UNIQUE_ACT))
			user.psi.backblast(rand(10,25))
			return TRUE
		to_chat(user, SPAN_DANGER("You sear through \the [target]'s neurons, reshaping as you see fit and leaving them subservient to your will!"))
		to_chat(target, SPAN_DANGER("Your defenses have eroded away and \the [user] has made you their mindslave."))
		GLOB.thralls.add_antagonist(target.mind, new_controller = user)
		return TRUE

/singleton/psionic_power/telepathy/assay
	name =            "Assay"
	cost =            15
	cooldown =        100
	use_grab =        TRUE
	min_rank =        PSI_RANK_IOTA
	use_description = "Grab a patient, target the head, then use the grab on them while on disarm intent, in order to perform a deep coercive-redactive probe of their psionic potential."

/singleton/psionic_power/telepathy/assay/invoke(mob/living/user, mob/living/target)
	if(user.zone_sel.selecting != BP_HEAD)
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_WARNING("\The [user] holds the head of \the [target] in both hands..."))
		to_chat(user, SPAN_NOTICE("You insinuate your mentality into that of \the [target]..."))
		to_chat(target, SPAN_WARNING("Your persona is being probed by the psychic lens of \the [user]."))
		if(!do_after(user, (target.stat == CONSCIOUS ? 5 : 2.5) SECONDS, target, DO_DEFAULT | DO_USER_UNIQUE_ACT))
			user.psi.backblast(rand(5,10))
			return TRUE
		to_chat(user, SPAN_NOTICE("You retreat from \the [target], holding your new knowledge close."))
		to_chat(target, SPAN_DANGER("Your mental complexus is laid bare to judgement of \the [user]."))
		target.show_psi_assay(user)
		return TRUE

/singleton/psionic_power/telepathy/focus
	name =          "Focus"
	cost =          10
	cooldown =      80
	use_grab =     TRUE
	min_rank =      PSI_RANK_IOTA
	use_description = "Grab a patient, target the mouth, then use the grab on them while on disarm intent, in order to cure ailments of the mind."

/singleton/psionic_power/telepathy/focus/invoke(mob/living/user, mob/living/target)
	if(user.zone_sel.selecting != BP_MOUTH)
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_WARNING("\The [user] holds the head of \the [target] in both hands..."))
		to_chat(user, SPAN_NOTICE("You probe \the [target]'s mind for various ailments.."))
		to_chat(target, SPAN_WARNING("Your mind is being cleansed of ailments by \the [user]."))
		if(!do_after(user, (target.stat == CONSCIOUS ? 5 : 2.5) SECONDS, target, DO_DEFAULT | DO_USER_UNIQUE_ACT))
			user.psi.backblast(rand(5,10))
			return TRUE
		to_chat(user, SPAN_WARNING("You clear \the [target]'s mind of ailments."))
		to_chat(target, SPAN_WARNING("Your mind is cleared of ailments."))

		var/telepathy_rank = user.psi.get_rank(PSI_TELEPATHY)
		if(telepathy_rank >= PSI_RANK_DELTA)
			target.AdjustParalysis(-1)
		target.drowsyness = 0
		if(istype(target, /mob/living/carbon))
			var/mob/living/carbon/M = target
			M.adjust_hallucination(-30)
		return TRUE
