/obj/item/gun/energy/ionrifle
	name = "ion rifle"
	desc = "The NT Mk60 EW Halicon is a man portable anti-armor weapon designed to disable mechanical threats, produced by NT. Not the best of its type."
	icon = 'icons/obj/guns/ion_rifle.dmi'
	icon_state = "ionrifle"
	item_state = "ionrifle"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_GARGANTUAN
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	one_hand_penalty = 4
	charge_cost = 60
	max_shots = 5
	fire_delay = 15
	projectile_type = /obj/item/projectile/ion
	wielded_item_state = "ionrifle-wielded"
	combustion = 0

/obj/item/gun/energy/ionrifle/small
	name = "ion pistol"
	desc = "The NT Mk72 EW Preston is a personal defense weapon designed to disable mechanical threats."
	icon = 'icons/obj/guns/ion_pistol.dmi'
	icon_state = "ionpistol"
	item_state = "ionpistol"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_NORMAL
	force = 5
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	one_hand_penalty = 0
	charge_cost = 40
	max_shots = 3
	fire_delay = 8
	projectile_type = /obj/item/projectile/ion/small

/obj/item/gun/energy/ionrifle/mounted
	name = "mounted ion gun"
	desc = "You should not see this. Call a developer."
	fire_delay = 10
	one_hand_penalty = 0
	self_recharge = TRUE
	use_external_power = TRUE
	has_safety = FALSE

/obj/item/gun/energy/decloner
	name = "biological demolecularisor"
	desc = "A gun that discharges high amounts of controlled radiation to slowly break a target into component elements."
	icon = 'icons/obj/guns/decloner.dmi'
	icon_state = "decloner"
	item_state = "decloner"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 3, TECH_POWER = 3)
	max_shots = 10
	projectile_type = /obj/item/projectile/energy/declone
	combustion = 0

/obj/item/gun/energy/floragun
	name = "floral somatoray"
	desc = "A tool that discharges controlled radiation which induces mutation in plant cells."
	icon = 'icons/obj/guns/floral.dmi'
	icon_state = "floramut100"
	item_state = "floramut"
	charge_cost = 10
	max_shots = 10
	projectile_type = /obj/item/projectile/energy/floramut
	origin_tech = list(TECH_MATERIAL = 2, TECH_BIO = 3, TECH_POWER = 3)
	modifystate = "floramut"
	self_recharge = 1
	var/singleton/plantgene/gene = null
	combustion = 0

	firemodes = list(
		list(mode_name="induce mutations", projectile_type=/obj/item/projectile/energy/floramut, modifystate="floramut"),
		list(mode_name="increase yield", projectile_type=/obj/item/projectile/energy/florayield, modifystate="florayield"),
		list(mode_name="induce specific mutations", projectile_type=/obj/item/projectile/energy/floramut/gene, modifystate="floramut"),
		)

/obj/item/gun/energy/floragun/use_before(atom/target, mob/living/user, click_parameters)
	if (!istype(target, /obj/machinery/portable_atmospherics/hydroponics))
		return FALSE

	user.visible_message(SPAN_DANGER("\The [user] fires \the [src] into \the [target]!"))
	Fire(target,user)
	return TRUE

/obj/item/gun/energy/floragun/verb/select_gene()
	set name = "Select Gene"
	set category = "Object"
	set src in view(1)

	var/genemask = input("Choose a gene to modify.") as null|anything in SSplants.plant_gene_datums

	if(!genemask)
		return

	gene = SSplants.plant_gene_datums[genemask]

	to_chat(usr, SPAN_INFO("You set the [src]'s targeted genetic area to [genemask]."))

	return

/obj/item/gun/energy/floragun/consume_next_projectile()
	. = ..()
	var/obj/item/projectile/energy/floramut/gene/G = .
	if(istype(G))
		G.gene = gene

/obj/item/gun/energy/meteorgun
	name = "meteor gun"
	desc = "For the love of god, make sure you're aiming this the right way!"
	icon = 'icons/obj/guns/launchers.dmi'
	icon_state = "riotgun"
	item_state = "c20r"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	projectile_type = /obj/item/projectile/meteor
	cell_type = /obj/item/cell/potato
	self_recharge = 1
	recharge_time = 5 //Time it takes for shots to recharge (in ticks)
	charge_meter = 0
	combustion = 0

/obj/item/gun/energy/meteorgun/pen
	name = "meteor pen"
	desc = "The pen is mightier than the sword."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "pen"
	item_state = "pen"
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_BELT

/obj/item/gun/energy/mindflayer
	name = "mind flayer"
	desc = "A custom-built weapon of some kind."
	icon = 'icons/obj/guns/xray.dmi'
	icon_state = "xray"
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 4)
	projectile_type = /obj/item/projectile/beam/mindflayer

/obj/item/gun/energy/toxgun
	name = "phoron pistol"
	desc = "A specialized firearm designed to fire lethal bolts of phoron."
	icon = 'icons/obj/guns/toxgun.dmi'
	icon_state = "toxgun"
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 2, TECH_PHORON = 4)
	projectile_type = /obj/item/projectile/energy/phoron

/obj/item/gun/energy/plasmacutter
	name = "plasma cutter"
	desc = "An industrial tool that expels focused plasma bursts for deconstruction and mining."
	charge_meter = 0
	icon = 'icons/obj/guns/plasmacutter.dmi'
	icon_state = "plasmacutter"
	item_state = "plasmacutter"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_NORMAL
	force = 8
	origin_tech = list(TECH_MATERIAL = 2, TECH_PHORON = 2, TECH_ENGINEERING = 2, TECH_COMBAT = 3)
	matter = list(MATERIAL_STEEL = 4000)
	projectile_type = /obj/item/projectile/beam/plasmacutter
	max_shots = 10
	self_recharge = 1
	var/datum/effect/spark_spread/spark_system

	// As an industrial tool the plasma cutter's safety training falls under construction.
	gun_skill = SKILL_CONSTRUCTION
	safety_skill = SKILL_TRAINED

/obj/item/gun/energy/plasmacutter/mounted
	name = "mounted plasma cutter"
	use_external_power = 1
	max_shots = 4
	has_safety = FALSE

/obj/item/gun/energy/plasmacutter/Initialize()
	. = ..()
	spark_system = new /datum/effect/spark_spread
	spark_system.set_up(5, 0, src)
	spark_system.attach(src)

/obj/item/gun/energy/plasmacutter/Destroy()
	QDEL_NULL(spark_system)
	return ..()

/obj/item/gun/energy/plasmacutter/proc/slice(mob/M = null)
	if(!safety())
		if(M)
			M.welding_eyecheck()//Welding tool eye check
			if(check_accidents(M, "[M] loses grip on \the [src] from its sudden recoil!",gun_skill, 60, safety_skill))
				return 0
		spark_system.start()
		return 1
	handle_click_empty(M)
	return 0


/obj/item/gun/energy/plasmacutter/IsHeatSource()
	return 3800


/obj/item/gun/energy/incendiary_laser
	name = "dispersive blaster"
	desc = "The A&M 'Shayatin' was the first of a class of dispersive laser weapons which, instead of firing a focused beam, scan over a target rapidly with the goal of setting it ablaze."
	icon = 'icons/obj/guns/incendiary_laser.dmi'
	icon_state = "incen"
	item_state = "incen"
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3, TECH_ESOTERIC = 4)
	matter = list(MATERIAL_ALUMINIUM = 1000, MATERIAL_PLASTIC = 500, MATERIAL_DIAMOND = 500)
	projectile_type = /obj/item/projectile/beam/incendiary_laser
	max_shots = 4


/obj/item/gun/energy/laser/xenofauna
	name = "xenofauna carbine"
	desc = "An outdated LP76 energy carbine, repurposed for wildlife control. A safety limiter locks it to a beam capable of frying the nervous system of simple wildlife, but with barely any effect on humans."
	icon_state = "laserwild"
	item_state = "laserwild"
	projectile_type = /obj/item/projectile/beam/xenofauna
	slot_flags = null
	wielded_item_state = "laserwild-wielded"
	max_shots = 12
	var/emagged = FALSE


/obj/item/gun/energy/laser/xenofauna/emag_act(charges, mob/user)
	if (!charges)
		return NO_EMAG_ACT
	if (emagged)
		to_chat(user, SPAN_NOTICE("\The [src]'s safety limiter has already been disabled!"))
		return NO_EMAG_ACT
	else
		to_chat(user, SPAN_NOTICE("\The [src]'s safety limiter sparks and dies!"))
		projectile_type = /obj/item/projectile/beam/smalllaser
		charge_cost = 30
	return ..()


/obj/item/gun/energy/laser/xenofauna/examine(mob/user, distance)
	. = ..()
	if (emagged && distance < 3)
		to_chat(user, SPAN_DANGER("The safety limiter doesn't look functional."))


/obj/item/gun/energy/laser/xenofauna/broken
	desc = "An outdated LP76 energy carbine, repurposed for wildlife control. This one looks like junk."


/obj/item/gun/energy/laser/xenofauna/broken/Initialize()
	. = ..()
	emag_act(INFINITY)

/obj/item/gun/energy/integrated
	name = "Integrated Projectile system"
	desc = "A basic template weapon. You shouldn't be seeing this."
	icon_state = "xenoheavyr" //Placeholder
	item_state = "xenoheavyr" //Placeholder
	slot_flags = SLOT_BACK|SLOT_OCLOTHING
	w_class = ITEM_SIZE_HUGE
	force = 15
	one_hand_penalty = 1.5
	fire_delay = 3.1
	accuracy = 1
	self_recharge = 1
	origin_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/bullet
	charge_cost = 500
	cell_type = /obj/item/cell
	wielded_item_state = "lascar-wielded"
	sales_price = null
	charge_meter = FALSE

	firemodes = list(
		list(mode_name="semi-automatic",       burst=1, fire_delay=3.1, burst_accuracy=null, dispersion=null, automatic = 0, charge_cost=0),
		list(mode_name="automatic",       burst=1, fire_delay=0.8, burst_accuracy=null, dispersion=null, automatic = 1, charge_cost=0),
		)

/obj/item/gun/energy/integrated/stormbolter
	name = "Terminator Stormbolter"
	desc = "A powerful bolter system attached to a suit of Terminator Armour."
	icon = 'icons/obj/guardpower_gear_32xOBJ.dmi'
	icon_state = "Rboltpistol_loaded_bigmag"
	item_state = "Rboltpistol_loaded_bigmag"
	slot_flags = null
	w_class = ITEM_SIZE_NORMAL
	force = 15
	one_hand_penalty = 0 //It's intended to be used one-handed.
	fire_delay = 1
	self_recharge = 0 //No magically manifesting ammo, you've got to get it back to the reloading systems in the suit.
	accuracy = 0 //A bit innacurate by virtue of firing big rounds out of a single-handed weapon, but it's being used by Terminators.
	origin_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 4)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/bullet/bolt
	charge_cost = 1 //One unit correlates to ammo capacity. 
	cell_type = /obj/item/cell/stormbolter
	charge_meter = FALSE

	firemodes = list(
		list(mode_name="semi-automatic",       burst=1, fire_delay=3.1, burst_accuracy=null, dispersion=null, automatic = 0, charge_cost=1),
		list(mode_name="burst",       burst=3, fire_delay=0.8, burst_accuracy=null, dispersion=null, automatic = 0, charge_cost=1),
		list(mode_name="automatic",       burst=1, fire_delay=1, burst_accuracy=null, dispersion=null, automatic = 1, charge_cost=1),
		)

/obj/item/gun/energy/integrated/stormbolter/dropped()
	..()
	spawn(1) if(src) qdel(src)
	visible_message("<span class='warning'><b>The Terminator return the Storm Bolter to their armour, automated systems already reloading the magazine for them.</span>")

/obj/item/gun/energy/phosphor
	name = "Phosphor Blast Pistol"
	desc = "A rare and dangerous weapon, used by powerful Magi and Skitarii Alphas, this weapon is supposed to deliver the killing blow by burning it's target to death, however, despite it's ability to pass through heavy armor easily, it has a short range."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "teslar"
	item_state = "teslar"
	slot_flags = SLOT_BACK|SLOT_BELT
	force = 8
	max_shots = 5 //not lore accurate, but this is better.
	w_class = ITEM_SIZE_NORMAL
	burst_delay = 2 //its a small as fuck pistol, it may be poisonous but its small.
	fire_delay = 8
	charge_cost = 300
	cell_type = /obj/item/cell/device/high/mechanicus
	projectile_type = 	/obj/item/projectile/energy/phosphor
	self_recharge = 1


/obj/item/gun/energy/archeotech
	name = "Archeotech Rifle"
	desc = "A truly ancient looking rifle. A miracle of ancient engineering, it is compatible with many forms of battery."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "xray" //Placeholder
	item_state = "xray" //Placeholder
	slot_flags = SLOT_BACK|SLOT_OCLOTHING
	w_class = ITEM_SIZE_HUGE
	force = 35
	one_hand_penalty = 2
	fire_delay = 3
	accuracy = 5
	self_recharge = 1
	projectile_type = /obj/item/projectile/archeotech/stun
	charge_cost = 500
	cell_type = /obj/item/cell/archeotech
	charge_meter = 0

	firemodes = list(
		list(mode_name="STUN", fire_delay=0.5, projectile_type=/obj/item/projectile/archeotech/stun, charge_cost=1000),
		list(mode_name="CAPTURE", fire_delay = 1, projectile_type=/obj/item/projectile/archeotech/capture, charge_cost=2000),
		list(mode_name="KILL", fire_delay = 1, projectile_type=/obj/item/projectile/archeotech/kill, charge_cost=2000),
		list(mode_name="EXPLOSION", fire_delay = 1, projectile_type=/obj/item/projectile/archeotech/explosion, charge_cost=4000),
		list(mode_name="ANTICAUSAL", fire_delay = 4, projectile_type=/obj/item/projectile/archeotech/anticausality, charge_cost=10000),
		)

/obj/item/gun/energy/archeotech/integrated
	name = "Archeotech Rifle"
	desc = "A truly ancient looking rifle. A miracle of ancient engineering, it is compatible with many forms of battery. This one seems to be integrated into a suit of armour."

/obj/item/gun/energy/archeotech/integrated/dropped()
	..()
	spawn(1) if(src) qdel(src)
	visible_message("<span class='warning'><b>The Archeotech Rifle snaps back into the armour..</span>")
