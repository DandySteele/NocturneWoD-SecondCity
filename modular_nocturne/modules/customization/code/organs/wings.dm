/obj/item/organ/wings/mutant
	name = "mutant wings"
	bodypart_overlay = /datum/bodypart_overlay/mutant/wings/mutant
	dna_block = /datum/dna_block/feature/accessory/wings_nocturne

/obj/item/organ/wings/mutant/can_soften_fall()
	return FALSE

/datum/bodypart_overlay/mutant/wings/mutant
	layers = list(
		EXTERNAL_FRONT = BODY_FRONT_LAYER,
		EXTERNAL_ADJACENT = BODY_ADJ_LAYER,
		EXTERNAL_BEHIND = BODY_BEHIND_LAYER,
	)
	feature_key = FEATURE_WINGS_NOCTURNE
	feature_key_sprite = "wings"

/datum/bodypart_overlay/mutant/wings/mutant/inherit_color(obj/item/bodypart/bodypart_owner, force)
	if(isnull(bodypart_owner))
		draw_color = null
		return TRUE

	if(draw_color && !force)
		return FALSE

	draw_color = bodypart_owner.owner?.dna.features[FEATURE_WINGS_NOCTURNE_COLORS]
	return TRUE

/datum/bodypart_overlay/mutant/wings/mutant/can_draw_on_bodypart(obj/item/bodypart/bodypart_owner, mob/living/carbon/owner, is_husked = FALSE)
	return ..() && can_draw_on_chest(owner, FEATURE_WINGS_NOCTURNE)
