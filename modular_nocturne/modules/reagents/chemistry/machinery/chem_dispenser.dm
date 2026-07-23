// soda dispenser
/obj/machinery/chem_dispenser/drinks/fullupgrade/fastfood
	desc = "Contains a small selection of non-alcoholic drinks."
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/fullupgrade/fastfood
	upgrade_reagents = null
	emagged_reagents = null

// smoothie dispenser
/obj/machinery/chem_dispenser/drinks/fullupgrade/smoothie
	name = "ice cream machine"
	desc = "The one functioning ice cream machine in the state of California. It doesn't even serve ice cream."
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/fullupgrade/smoothie
	dispensable_reagents = list(
		/datum/reagent/consumable/strawberry_banana,
		/datum/reagent/consumable/berry_blast,
		/datum/reagent/consumable/funky_monkey,
		/datum/reagent/consumable/green_giant,
		/datum/reagent/consumable/melon_baller,
		/datum/reagent/consumable/vanilla_dream,
	)
	upgrade_reagents = null
	emagged_reagents = null

// beer dispenser
/obj/machinery/chem_dispenser/drinks/beer/fullupgrade/nocturne
	desc = "Contains a selection of alcoholic drinks."
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/beer/fullupgrade/nocturne
	upgrade_reagents = null
	emagged_reagents = null
