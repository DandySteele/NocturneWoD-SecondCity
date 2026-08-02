#define CLOTHING_UNDER_ICONS \
	icon = 'modular_nocturne/modules/clothing/icons/clothing.dmi'; \
	worn_icon = 'modular_nocturne/modules/clothing/icons/worn.dmi'; \
	ONFLOOR_ICON_HELPER('modular_nocturne/modules/clothing/icons/onfloor.dmi')

/obj/item/clothing/under/vampire/gear_harness
	name = "gear harness"
	desc = "A simple, inconspicuous harness meant to be worn instead of clothing."
	icon_state = "gear_harness"
	CLOTHING_UNDER_ICONS
	body_parts_covered = NONE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	bodyshapes_with_variations = NONE

#undef CLOTHING_UNDER_ICONS
