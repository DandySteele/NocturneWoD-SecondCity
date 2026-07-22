GLOBAL_DATUM_INIT(ssd_indicator_vis, /obj/effect/overlay/indicator/ssd, new)

/obj/effect/overlay/indicator/ssd
	icon = 'modular_nocturne/modules/indicators/icons/indicators.dmi'
	icon_state = "ssd"

/mob/living
	var/ssd_indicator = FALSE
	var/lastclienttime = 0

/mob/living/proc/set_ssd_indicator(state)
	if(state == ssd_indicator)
		return
	ssd_indicator = state
	if(ssd_indicator)
		vis_contents |= GLOB.ssd_indicator_vis
		log_message("<font color='green'>has went SSD and got their indicator!</font>", LOG_ATTACK)
	else
		vis_contents -= GLOB.ssd_indicator_vis
		log_message("<font color='green'>is no longer SSD and lost their indicator!</font>", LOG_ATTACK)

/mob/living/Logout()
	lastclienttime = world.time
	set_ssd_indicator(TRUE)
	. = ..()

//Temporary, look below for the reason
/mob/living/ghostize(can_reenter_corpse = TRUE, forced = FALSE)
	. = ..()
	set_ssd_indicator(FALSE)
