/obj/item/organ/ears/mutant
	name = "mutant ears"
	bodypart_overlay = /datum/bodypart_overlay/mutant/ears/mutant

	dna_block = /datum/dna_block/feature/accessory/ears_nocturne

/datum/bodypart_overlay/mutant/ears/mutant
	layers = list(
		EXTERNAL_FRONT = BODY_FRONT_LAYER,
		EXTERNAL_ADJACENT = BODY_ADJ_LAYER,
		EXTERNAL_BEHIND = BODY_BEHIND_LAYER,
	)
	feature_key = FEATURE_EARS_NOCTURNE
	feature_key_sprite = FEATURE_EARS

	offset_location = UPPER_BODY

/datum/bodypart_overlay/mutant/ears/mutant/inherit_color(obj/item/bodypart/bodypart_owner, force)
	if(isnull(bodypart_owner))
		draw_color = null
		return TRUE

	if(draw_color && !force)
		return FALSE

	draw_color = bodypart_owner.owner?.dna.features[FEATURE_EARS_NOCTURNE_COLORS]
	return TRUE

/datum/bodypart_overlay/mutant/ears/mutant/can_draw_on_bodypart(obj/item/bodypart/bodypart_owner, mob/living/carbon/owner, is_husked = FALSE)
	return ..() && can_draw_on_head(owner, feature_key)
