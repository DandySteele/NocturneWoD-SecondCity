#define LEWD_MASK_ICONS \
	icon = 'modular_nocturne/modules/lewd/icons/clothing.dmi'; \
	worn_icon = 'modular_nocturne/modules/lewd/icons/worn.dmi'; \
	ONFLOOR_ICON_HELPER('modular_nocturne/modules/lewd/icons/onfloor.dmi')

/obj/item/clothing/mask/muzzle/ball_gag
	name = "ball gag"
	desc = "Prevents the wearer from speaking."
	icon_state = "ball_gag"
	LEWD_MASK_ICONS

/obj/item/clothing/mask/muzzle/ring_gag
	name = "ring gag"
	desc = "A mouth wrap seemingly designed to hold the mouth open."
	icon_state = "ring_gag"
	LEWD_MASK_ICONS

#undef LEWD_MASK_ICONS
