// Rod for railguns. Slightly less nasty than the sniper round.
/obj/item/projectile/bullet/magnetic
	name = "rod"
	icon_state = "rod"
	damage = 75
	penetrating = 5
	armor_penetration = 28
	rupture_artery = 1.1
	fire_sound = 'sound/weapons/railgun.ogg'
	distance_falloff = 1

/obj/item/projectile/bullet/magnetic/slug
	name = "slug"
	icon_state = "gauss_silenced"
	damage = 80
	armor_penetration = 26

/obj/item/projectile/bullet/magnetic/flechette
	name = "flechette"
	icon_state = "flechette"
	damage = 75
	armor_penetration = 30
	fire_sound = 'sound/weapons/rapidslice.ogg'
	distance_falloff = 0.5
