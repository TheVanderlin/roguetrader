/datum/job/liaison
	title = "Workplace Liaison"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "Corporate Regulations, the Union Charter, and the Explorator Organisation"
	selection_color = "#2f2f7f"
	economic_power = 18
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	alt_titles = list(
		"Corporate Liaison",
		"Union Representative",
		"Corporate Representative",
		"Corporate Executive"
		)
	outfit_type = /singleton/hierarchy/outfit/job/torch/passenger/workplace_liaison
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	skill_points = 26
	min_skill = list( // 5 points
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED, // 4 points
		SKILL_FINANCE = SKILL_BASIC // 1 point
	)

	access = list(
		access_liaison, access_bridge, access_solgov_crew,
		access_nanotrasen, access_commissary, access_torch_fax,
		access_radio_comm, access_radio_serv
	)

	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/liaison/get_description_blurb()
	return "You are the Workplace Liaison. You are a civilian employee of EXO, the Explorator Organisation, the government-owned imperial conglomerate that partially funds The Dauntless. You are on board the vessel to promote imperial interests and protect the rights of the contractors on board as their union leader. You are not internal affairs. You advise command on imperial and union matters and contractors on their rights and obligations. Maximise profit. Be the shady imperial shill you always wanted to be."
