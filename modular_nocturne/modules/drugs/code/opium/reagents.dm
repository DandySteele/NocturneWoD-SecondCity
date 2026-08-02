/datum/reagent/drug/opium
	name = "Opium"
	description = "A potent painkiller and narcotic harvested from opium poppy plants."
	color = "#fff9e6"
	overdose_threshold = 30
	ph = 8.0
	taste_description = "flowers"
	addiction_types = list(/datum/addiction/opioids = 30)
	metabolized_traits = list(TRAIT_ANALGESIA)
	var/strength_mod = 1.0

/datum/reagent/drug/opium/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, metabolization_ratio)
	. = ..()
	if(current_cycle > 5)
		if(strength_mod > 1.0)
			affected_mob.add_mood_event("smacked out", /datum/mood_event/narcotic_heavy, name)
		else
			affected_mob.add_mood_event("numb", /datum/mood_event/narcotic_medium, name)

	if(current_cycle == round(16 / strength_mod)) //~3u
		to_chat(affected_mob, span_warning("You start to feel tired..."))
		affected_mob.adjust_eye_blur(2 SECONDS * metabolization_ratio * seconds_per_tick)
		if(SPT_PROB(66, seconds_per_tick))
			affected_mob.emote("yawn")

	switch(round(current_cycle * strength_mod))
		if(24 to 36) // 5u to 7.5u
			if(SPT_PROB(66 * (2 - creation_purity), seconds_per_tick))
				affected_mob.adjust_drowsiness_up_to(2 SECONDS * metabolization_ratio, 12 SECONDS)

		if(36 to 48) // 7.5u to 10u
			affected_mob.adjust_drowsiness_up_to(2 SECONDS * metabolization_ratio * seconds_per_tick, 12 SECONDS)

		if(48 to INFINITY) //10u onward
			affected_mob.adjust_drowsiness_up_to(3 SECONDS * metabolization_ratio * seconds_per_tick, 20 SECONDS)
			// doesn't scale from purity - at this point it tries to guarantee sleep
			if(SPT_PROB(30 * (48 - current_cycle), seconds_per_tick))
				affected_mob.Sleeping(4 SECONDS * metabolization_ratio)

/datum/reagent/drug/opium/overdose_process(mob/living/affected_mob, seconds_per_tick, metabolization_ratio)
	. = ..()
	affected_mob.adjust_tox_loss(1 * seconds_per_tick * metabolization_ratio * strength_mod, updating_health = FALSE, required_biotype = affected_biotype)

	if(SPT_PROB(18, seconds_per_tick))
		affected_mob.drop_all_held_items()
		affected_mob.set_dizzy_if_lower(4 SECONDS)
		affected_mob.set_jitter_if_lower(4 SECONDS)

/datum/reagent/drug/opium/heroin
	name = "Heroin"
	description = "A potent opioid narcotic. Heroin is an acetylated form of morphine, with effects about one and a half times more potent."
	color = "#c0af95"
	overdose_threshold = 20
	ph = 7.4
	addiction_types = list(/datum/addiction/opioids = 10)
	strength_mod = 1.5

/datum/reagent/drug/opium/heroin/on_mob_metabolize(mob/living/affected_mob)
	. = ..()
	affected_mob.add_movespeed_mod_immunities(type, /datum/movespeed_modifier/damage_slowdown)

/datum/reagent/drug/opium/heroin/on_mob_end_metabolize(mob/living/affected_mob)
	. = ..()
	affected_mob.remove_movespeed_mod_immunities(type, /datum/movespeed_modifier/damage_slowdown)

/datum/reagent/drug/opium/codeine
	name = "Codeine"
	description = "An opioid commonly used as a treatment for pain and coughing. About half as potent as morphine."
	overdose_threshold = 30
	ph = 8.9
	strength_mod = 0.5
