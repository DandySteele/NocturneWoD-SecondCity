/turf/open/misc/drought
	gender = PLURAL
	name = "desert"
	desc = "Dry, rocky sand."
	icon = 'modular_nocturne/modules/walls/icons/turf/desert.dmi'
	icon_state = "desert"
	base_icon_state = "desert"

	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/drought/Initialize(mapload)
	. = ..()
	icon_state = "[initial(base_icon_state)]_[rand(1,3)]"

/turf/open/misc/drought/smooth
	icon_state = "desert_alt"
	base_icon_state = "desert_alt"

