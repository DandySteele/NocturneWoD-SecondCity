GLOBAL_DATUM_INIT(npc_indicator_vis, /obj/effect/overlay/indicator/npc, new)

/obj/effect/overlay/indicator/npc
	icon = 'modular_nocturne/modules/indicators/icons/indicators.dmi'
	icon_state = "npc"

/mob/living
	var/npc_indicator = FALSE

/mob/living/proc/set_npc_indicator(state)
	if(state == npc_indicator)
		return
	npc_indicator = state
	if(npc_indicator)
		vis_contents |= GLOB.npc_indicator_vis
	else
		vis_contents -= GLOB.npc_indicator_vis

/*
// disabling this for now because its actually fucking obnoxious
/mob/living/carbon/human/npc/LateInitialize(mapload)
	. = ..()

	set_npc_indicator(TRUE)
*/
