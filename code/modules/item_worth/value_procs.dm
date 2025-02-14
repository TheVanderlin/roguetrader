/atom/proc/Value(base)
	return base

/obj/Value()
	. = ..()
	for(var/a in contents)
		. += get_value(a)

/obj/machinery/Value()
	. = ..()
	if(MACHINE_IS_BROKEN(src))
		. *= 0.5
	. = round(.)

/obj/structure/barricade/Value()
	return material.value

/obj/structure/bed/Value()
	return ..() * material.value

/obj/item/slime_extract/Value(base)
	return base * Uses

/obj/item/ammo_casing/Value()
	if(!BB)
		return 1
	return ..()

/obj/item/reagent_containers/Value()
	. = ..()
	if(reagents)
		for(var/a in reagents.reagent_list)
			var/datum/reagent/reg = a
			. += reg.Value() * reg.volume
	. = round(.)

/datum/reagent/proc/Value()
	return value

/obj/item/stack/Value(base)
	return base * amount

/obj/item/stack/material/Value()
	if(!material)
		return ..()
	return material.value * amount

/obj/item/ore/Value()
	return material ? material.value : 0

/obj/item/material/Value()
	return material.value * worth_multiplier

/obj/item/material/twohanded/ravenor/Value(base)
	return base
	for(var/a in contents)
		base += get_value(a)

/obj/item/spacecash/Value()
	return worth

/obj/item/ammo_magazine/Value()
	return sales_price * 0.8

/obj/item/exploration_loot/Value()
	return sales_price

/obj/item/rnd/Value()
	return sales_price

/obj/item/stack/thrones/Value()
	return sales_price

/obj/item/stack/thrones2/Value()
	return sales_price

/mob/living/carbon/human/Value(base)
	. = ..()
	if(species)
		. *= species.rarity_value
