/material/waste
	name = MATERIAL_WASTE
	stack_type = null
	icon_colour = "#2e3a07"
	sheet_icon_base = "puck"
	ore_name = "slag"
	ore_desc = "Someone messed up..."
	ore_icon_overlay = "lump"
	hidden_from_codex = TRUE
/*
/material/imperial
	name = MATERIAL_IMPERIAL
	display_name = "disturbing stone"
	wall_icon_base = "rrwall"
	wall_icon_reinf = "rrwall"
	shard_type = SHARD_STONE_PIECE
	sheet_icon_base = "brick"
	sheet_singular_name = "brick"
	sheet_plural_name = "bricks"
	conductive = 0
	brute_armor = 5
	burn_armor = 4
	integrity = 200
	melting_point = 2000
	weight = 12
	construction_difficulty = MATERIAL_NORMAL_DIY
	hidden_from_codex = TRUE
	value = 10

/material/colony
	name = MATERIAL_COLONY
	display_name = "disturbing stone"
	wall_icon_base = "concrete"
	wall_icon_reinf = "concrete"
	shard_type = SHARD_STONE_PIECE
	sheet_icon_base = "brick"
	sheet_singular_name = "brick"
	sheet_plural_name = "bricks"
	conductive = 0
	brute_armor = 5
	burn_armor = 4
	integrity = 200
	melting_point = 2000
	weight = 12
	construction_difficulty = MATERIAL_NORMAL_DIY
	hidden_from_codex = TRUE
	value = 10
*/
/material/cult
	name = MATERIAL_CULT
	display_name = "disturbing stone"
	wall_icon_base = "cult"
	icon_colour = "#402821"
	wall_icon_reinf = "reinf_cult"
	shard_type = SHARD_STONE_PIECE
	sheet_icon_base = "brick"
	sheet_singular_name = "brick"
	sheet_plural_name = "bricks"
	conductive = 0
	construction_difficulty = MATERIAL_NORMAL_DIY
	hidden_from_codex = TRUE

/material/cult/place_dismantled_girder(turf/target)
	new /obj/structure/girder/cult(target)

/material/cult/reinf
	name = MATERIAL_REINFORCED_CULT
	display_name = "runic inscriptions"
