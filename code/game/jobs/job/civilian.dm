/datum/job/chef
	title = "Chef"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	access = list(access_hydroponics, access_kitchen)
	alt_titles = list("Cook")
	outfit_type = /singleton/hierarchy/outfit/job/service/chef

/datum/job/hydro
	title = "Gardener"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(access_hydroponics, access_kitchen)
	alt_titles = list("Hydroponicist")
	outfit_type = /singleton/hierarchy/outfit/job/service/gardener

//Cargo
/datum/job/noble_guest
	title = "Quartermaster"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	economic_power = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /singleton/hierarchy/outfit/job/cargo/qm

/datum/job/pilgrim
	title = "Cargo Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	outfit_type = /singleton/hierarchy/outfit/job/cargo/cargo_tech

/datum/job/shaft_miner
	title = "Shaft Miner"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	economic_power = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	alt_titles = list("Drill Technician","Prospector")
	outfit_type = /singleton/hierarchy/outfit/job/cargo/mining

/datum/job/janitor
	title = "Janitor"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(access_janitor, access_maint_tunnels, access_mechanicus, access_research, access_sec_doors, access_medical)
	alt_titles = list("Custodian","Sanitation Technician")
	outfit_type = /singleton/hierarchy/outfit/job/service/janitor

//More or less assistants
/datum/job/librarian
	title = "Librarian"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	access = list(access_dauntless, access_maint_tunnels)
	alt_titles = list("Journalist")
	outfit_type = /singleton/hierarchy/outfit/job/librarian

/datum/job/lawyer
	title = "Internal Affairs Agent"
	department = "Support"
	department_flag = SPT
	total_positions = 2
	spawn_positions = 2
	supervisors = "company officials and Corporate Regulations"
	economic_power = 7
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_bridge)
	minimal_player_age = 10
	outfit_type = /singleton/hierarchy/outfit/job/internal_affairs_agent

/datum/job/lawyer/equip(mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)
