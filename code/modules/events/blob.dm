/datum/event/blob
	announceWhen	= 12

	var/obj/blob/core/Blob

/datum/event/blob/announce()
	level_seven_announcement()

/datum/event/blob/start()
	var/turf/T = pick_subarea_turf(/area/maintenance, list(/proc/is_station_turf, /proc/not_turf_contains_dense_objects))
	if(!T)
		log_and_message_admins("Blob failed to find a viable turf.", null)
		kill()
		return

	log_and_message_admins("Blob spawned in \the [get_area(T)]", user = null, location = T)
	Blob = new /obj/blob/core(T)
	for(var/i = 1; i < rand(3, 4), i++)
		Blob.Process()

/datum/event/blob/tick()
	if(!Blob || !Blob.loc)
		Blob = null
		kill()
		return
	if(IsMultiple(activeFor, 3))
		Blob.Process()
