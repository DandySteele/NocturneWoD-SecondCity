/datum/job/vampire/aide
	title = JOB_TOWNHALL_MAYORAIDE
	description = "You are mayor Nathan Eriksen's (R) personal aide. Coordinate the public sector and ensure his re-election chances improve."
	faction = FACTION_CITY
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Mayor of Palm Desert."
	config_tag = "TOWNHALL_CLERK"
	outfit = /datum/outfit/job/vampire/aide
	job_flags = CITY_JOB_FLAGS
	exp_required_type_department = EXP_TYPE_SERVICES
	department_for_prefs = /datum/job_department/city_services
	departments_list = list(
		/datum/job_department/city_services,
	)
	display_order = JOB_DISPLAY_ORDER_TH_MAYORAIDE
	minimum_masquerade = 0
	known_contacts = list(
		JOB_TOWNHALL_CLERK,
		JOB_POLICE_CAPTAIN,
		JOB_CAPO,
		JOB_PRINCE,
		JOB_MAGADON_CORP_HEAD
	)
	allowed_splats = list(SPLAT_NONE)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

/datum/job/vampire/aide/get_captaincy_announcement(mob/living/captain)
	return "Mayor Eriksen's secretary [captain.real_name] is in the city!"

/datum/outfit/job/vampire/aide
	name = "Mayor's Aide"
	jobtype = /datum/job/vampire/aide

	id = /obj/item/card/townhall/aide
	uniform = /obj/item/clothing/under/vampire/suit
	shoes = /obj/item/clothing/shoes/vampire/businessblack
	l_pocket = /obj/item/smartphone
	r_pocket = /obj/item/vamp/keys/townhall/secretary
	backpack_contents = list(
		/obj/item/clipboard = 1,
		/obj/item/pen/fourcolor = 1,
		/obj/item/paper = 1,
		/obj/item/card/credit/seneschal = 1,
	)
