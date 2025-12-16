/datum/job/assistant
	title = "Assistant"
	flag = JOB_ASSISTANT
	department_flag = JOBCAT_SUPPORT
	total_positions = -1
	spawn_positions = -1
	supervisors = "the head of personnel"
	department_head = list("Head of Personnel")
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	alt_titles = list("Off-Duty", "Retired", "Intern")
	outfit = /datum/outfit/job/assistant

/datum/job/assistant/get_access()
	if(GLOB.configuration.jobs.assistant_maint_access)
		return list(ACCESS_MAINT_TUNNELS)
	else
		return list()

/datum/outfit/job/assistant
	name = "Assistant"
	jobtype = /datum/job/assistant

	uniform = /obj/item/clothing/under/color/random
	id = /obj/item/card/id/assistant

/datum/job/prisoner
	title = "Prisoner"
	flag = JOB_PRISONER
	department_flag = JOBCAT_SUPPORT
	total_positions = 2
	spawn_positions = 2
	supervisors = "the warden"
	department_head = list("The Warden")
	selection_color = "#ffdddd"
	alt_titles = list("Scum", "Max Security Prisoner", "Min Security Prisoner", "Jailbird", "Inmate")
	outfit = /datum/outfit/job/prisoner

/datum/job/prisoner/is_position_available()
    return FALSE

/datum/outfit/job/prisoner
	name = "Prisoner"
	jobtype = /datum/job/prisoner

	uniform = /obj/item/clothing/under/color/orange/prison
	shoes = /obj/item/clothing/shoes/orange
	l_ear = /obj/item/radio/headset
	id = /obj/item/card/id/prisonerjob
	pda = null
