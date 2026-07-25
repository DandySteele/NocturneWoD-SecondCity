/datum/job/vampire/th_clerk
	title = JOB_TOWNHALL_CLERK
	description = "You are a deputy clerk at the local town hall. For whatever reason, you are still stuck here, working the night shift. Do as the mayor's aide says and be a good civil servant."
	faction = FACTION_CITY
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Mayor, his aide, and the people of Palm Desert."
	config_tag = "TOWNHALL_CLERK"
	outfit = /datum/outfit/job/vampire/th_clerk
	job_flags = CITY_JOB_FLAGS
	exp_required_type_department = EXP_TYPE_SERVICES
	department_for_prefs = /datum/job_department/city_services
	departments_list = list(
		/datum/job_department/city_services,
	)
	display_order = JOB_DISPLAY_ORDER_TH_CLERK
	minimum_masquerade = 0
	known_contacts = list(
		JOB_TOWNHALL_MAYORAIDE,
		JOB_TOWNHALL_CLERK,
		JOB_POLICE_CAPTAIN
	)

	allowed_splats = list(SPLAT_GHOUL, SPLAT_KINFOLK, SPLAT_NONE)

	alt_titles = list(
		JOB_TOWNHALL_CLERK,
		"City Archivist",
		"Permits Clerk",
		"Minute Clerk",
		"City Attorney",
	)

/datum/outfit/job/vampire/th_clerk
	name = "Deputy Clerk"
	jobtype = /datum/job/vampire/th_clerk

	id = /obj/item/card/townhall
	uniform = /obj/item/clothing/under/vampire/clerk
	l_pocket = /obj/item/smartphone
	r_pocket = /obj/item/vamp/keys/townhall
	shoes = /obj/item/clothing/shoes/vampire/businessblack
	backpack_contents = list(
		/obj/item/clipboard = 1,
		/obj/item/pen/fourcolor = 1,
		/obj/item/paper = 1,
		/obj/item/card/credit/rich = 1,
	)
