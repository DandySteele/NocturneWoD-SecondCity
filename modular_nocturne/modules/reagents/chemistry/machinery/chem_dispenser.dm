/obj/machinery/chem_dispenser/drinks/fastfood
	desc = "Contains a small selection of non-alcoholic drinks."
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/fastfood


/obj/machinery/chem_dispenser/drinks/fastfood/Initialize(mapload)
	drinks_dispensable_reagents = list(
		/datum/reagent/consumable/space_cola,
		/datum/reagent/consumable/dr_gibb,
		/datum/reagent/consumable/ice,
		/datum/reagent/consumable/icetea,
		/datum/reagent/consumable/menthol,
		/datum/reagent/consumable/berryjuice,
		/datum/reagent/consumable/lemonjuice,
		/datum/reagent/consumable/lemon_lime,
		/datum/reagent/consumable/limejuice,
		/datum/reagent/consumable/melon_soda,
		/datum/reagent/consumable/grape_soda,
		/datum/reagent/consumable/orangejuice,
		/datum/reagent/consumable/pwr_game,
		/datum/reagent/consumable/spacemountainwind,
		/datum/reagent/consumable/sodawater,
		/datum/reagent/consumable/sol_dry,
		/datum/reagent/consumable/space_up,
		/datum/reagent/consumable/tomatojuice,
		/datum/reagent/consumable/tonic,
		/datum/reagent/water,
		/datum/reagent/consumable/coffee,
	)

	drink_emagged_reagents = list()

	. = ..()

/obj/machinery/chem_dispenser/drinks/smoothie
	name = "ice cream machine"
	desc = "The one functioning ice cream machine in the state of California. It doesn't even serve ice cream."
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/smoothie


/obj/machinery/chem_dispenser/drinks/smoothie/Initialize(mapload)
	drinks_dispensable_reagents = list(
		/datum/reagent/consumable/strawberry_banana,
		/datum/reagent/consumable/berry_blast,
		/datum/reagent/consumable/funky_monkey,
		/datum/reagent/consumable/green_giant,
		/datum/reagent/consumable/melon_baller,
		/datum/reagent/consumable/vanilla_dream,
	)

	. = ..()

/obj/machinery/chem_dispenser/drinks/beer/nocturne
	circuit = /obj/item/circuitboard/machine/chem_dispenser/drinks/beer/nocturne

/obj/machinery/chem_dispenser/drinks/beer/nocturne/Initialize(mapload)
	beer_emagged_reagents = list()
	. = ..()
