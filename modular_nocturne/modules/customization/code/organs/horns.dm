/obj/item/organ/horns/mutant
	name = "mutant horns"
	dna_block = /datum/dna_block/feature/accessory/horns_nocturne
	bodypart_overlay = /datum/bodypart_overlay/mutant/horns/mutant

/datum/bodypart_overlay/mutant/horns/mutant
	layers = list(
		EXTERNAL_FRONT = BODY_FRONT_LAYER,
		EXTERNAL_ADJACENT = BODY_ADJ_LAYER,
		EXTERNAL_BEHIND = BODY_BEHIND_LAYER,
	)
	feature_key = FEATURE_HORNS_NOCTURNE
	feature_key_sprite = FEATURE_HORNS

/datum/bodypart_overlay/mutant/horns/mutant/inherit_color(obj/item/bodypart/bodypart_owner, force)
	if(isnull(bodypart_owner))
		draw_color = null
		return TRUE

	if(draw_color && !force)
		return FALSE

	draw_color = bodypart_owner.owner?.dna.features[FEATURE_HORNS_NOCTURNE_COLORS]
	return TRUE

/datum/bodypart_overlay/mutant/horns/mutant/can_draw_on_bodypart(obj/item/bodypart/bodypart_owner, mob/living/carbon/owner, is_husked = FALSE)
	return ..() && can_draw_on_head(owner, feature_key)
