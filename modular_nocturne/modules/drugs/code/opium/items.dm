/obj/item/reagent_containers/applicator/snortable/heroin
	name = "heroin"
	desc = "A powdered form of heroin, a potent opiate."
	icon_state = "heroin"

	list_reagents = list(/datum/reagent/drug/opium/heroin = 10)

/obj/item/reagent_containers/applicator/snortable/heroin/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/selling, 50, "heroin", TRUE, -1, 5)

/obj/item/storage/box/baggie/heroin
	name = "brown package"
	icon = 'modular_nocturne/modules/drugs/icons/items.dmi'
	ONFLOOR_ICON_HELPER('modular_nocturne/modules/drugs/icons/onfloor.dmi')
	icon_state = "package_heroin"

	spawn_count = 3
	spawn_type = /obj/item/reagent_containers/applicator/snortable/heroin

/obj/item/reagent_containers/cup/bottle/codeine
	name = "cough medication bottle"
	desc = "A small bottle of codeine."
	list_reagents = list(/datum/reagent/drug/opium/codeine = 30)
