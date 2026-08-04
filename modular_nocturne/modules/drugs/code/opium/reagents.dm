// base opium class, shouldnt be used

/datum/reagent/drug/opium
	name = "Opiate"
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

// heroin, stronger than morphine

/datum/reagent/drug/opium/heroin
	name = "Heroin"
	description = "A potent opioid narcotic. Heroin is an acetylated form of morphine, with effects about one and a half times more potent."
	color = "#c0af95"
	overdose_threshold = 15
	ph = 7.4
	addiction_types = list(/datum/addiction/opioids = 10)
	strength_mod = 1.5

/datum/reagent/drug/opium/heroin/on_mob_metabolize(mob/living/affected_mob)
	. = ..()
	affected_mob.add_movespeed_mod_immunities(type, /datum/movespeed_modifier/damage_slowdown)

/datum/reagent/drug/opium/heroin/on_mob_end_metabolize(mob/living/affected_mob)
	. = ..()
	affected_mob.remove_movespeed_mod_immunities(type, /datum/movespeed_modifier/damage_slowdown)

// codeine, weaker than morphine. also surpresses coughs

/datum/reagent/drug/opium/codeine
	name = "Codeine"
	description = "An opioid commonly used as a treatment for pain and coughing. About half as potent as morphine."
	overdose_threshold = 30
	ph = 8.9
	strength_mod = 0.5

/datum/reagent/drug/opium/codeine/on_mob_life(mob/living/affected_mob, seconds_per_tick, metabolization_ratio)
	. = ..()
	affected_mob.apply_status_effect(/datum/status_effect/throat_soothed)


// chemical reactions

// morphine -> heroin: boil morphine with acetic anhydride
// potassium + chlorine is a horrible approximation of acetic ahydride
/datum/chemical_reaction/heroin
	results = list(/datum/reagent/drug/opium/heroin = 1)
	required_reagents = list(/datum/reagent/medicine/morphine = 1, /datum/reagent/potassium = 1, /datum/reagent/chlorine = 1)
	reaction_tags = REACTION_TAG_EASY | REACTION_TAG_DRUG
	required_temp = 400
	thermic_constant = 50

// heroin -> powder heroin: IDFK, this is completely made up
// i guess its just dehydrating it???
/datum/chemical_reaction/powder_heroin
	required_reagents = list(/datum/reagent/drug/opium/heroin = 10)
	required_catalysts = list(/datum/reagent/acetone = 5)
	required_temp = 350

	reaction_flags = REACTION_INSTANT
	reaction_tags = REACTION_TAG_EASY | REACTION_TAG_DRUG
	mob_react = FALSE

/datum/chemical_reaction/powder_heroin/on_reaction(datum/reagents/holder, datum/equilibrium/reaction, created_volume)
	var/location = get_turf(holder.my_atom)
	for(var/i in 1 to round(created_volume, CHEMICAL_VOLUME_ROUNDING))
		new /obj/item/reagent_containers/applicator/snortable/heroin(location)


// morphine -> codeine: https://patents.google.com/patent/US6204337B1/en
// "Morphine is usually first dissolved in absolute ethanol and then added to the solution of [trimethylanilinium salt]
// in [thoxide, chloride or hydroxide]. Ethanol is distilled out during the reaction."
/datum/chemical_reaction/codeine
	results = list(/datum/reagent/drug/opium/codeine = 1)
	required_reagents = list(/datum/reagent/medicine/morphine = 1, /datum/reagent/consumable/ethanol = 1)
	required_catalysts = list(/datum/reagent/chlorine = 1) // closest thing to chloride
	reaction_tags = REACTION_TAG_EASY | REACTION_TAG_DRUG
	required_temp = 400
	thermic_constant = 50
