/obj/structure/table/wood/bar
	desc = "A somewhat fancy table used at restauraunts. Featuring a simplistic anchored leg design, wow!"
	icon_state = "table-0"
	base_icon_state = "table"
	icon = 'modular_nocturne/modules/decor/icons/mojave_structures/smooth/table_wood_bar.dmi'
	can_flip = FALSE

/obj/structure/table/no_smooth
	name = "Very Uncool Table"
	desc = "This will make coders scream."
	icon = 'modular_nocturne/modules/decor/icons/mojave_structures/standalone_tables.dmi'
	smoothing_flags = NONE
	smoothing_groups = null
	canSmoothWith = null
	can_flip = FALSE

/obj/structure/table/no_smooth/modular_desk
	name = "wood desk"
	desc = "A compact wood desk, used by a wide variety of business-inclined individuals."
	icon = 'modular_nocturne/modules/decor/icons/mojave_structures/modular_tables.dmi'
	icon_state = "desk_wood_mid"

/obj/structure/table/no_smooth/modular_desk/left
	icon_state = "desk_wood_left"

/obj/structure/table/no_smooth/modular_desk/right
	icon_state = "desk_wood_right"

/obj/structure/table/no_smooth/modular_desk/corner
	icon_state = "desk_wood_corner"

// Metal Non-Smoothing tables //

/obj/structure/table/no_smooth/metal
	name = "metal table"
	desc = "A table, masterfully designed with high-tech to become... round."
	icon_state = "table_metal_round"
	max_integrity = 225

/obj/structure/table/no_smooth/metal/Initialize(mapload)
	. = ..()
	if(prob(35))
		icon_state = "[initial(icon_state)]-[rand(1,2)]"

// Large tables //

/obj/structure/table/no_smooth/large
	name = "base class large ms13 table"
	desc = "CALL A CODER, CALL A CODER. For ME!"
	icon = 'modular_nocturne/modules/decor/icons/mojave_structures/64x64_large_furniture.dmi'

/obj/structure/table/no_smooth/large/Initialize(mapload)
	. = ..()
	if(dir == NORTH)
		bound_width = 64

	if(dir == EAST)
		bound_height = 64

	if(dir == SOUTH)
		bound_width = 64

	if(dir == WEST)
		bound_height = 64

// Metal Large tables /

/obj/structure/table/no_smooth/large/metal
	name = "metal table"
	desc = "A solid, wide metal table. Nothing about it stands out in particular."
	icon_state = "table_metal_wide"
	max_integrity = 300

/obj/structure/table/no_smooth/large/metal/desk
	name = "metal desk"
	desc = "A solid, wide metal table. Nothing about it stands out in particular."
	icon_state = "desk_metal"

/obj/structure/table/no_smooth/large/metal/desk/alt
	name = "metal desk"
	desc = "A compact metal desk, used by people whose work would be far easier if you weren't there."
	icon_state = "desk_metal_small"

// Wood Non-Smoothing tables //

/obj/structure/table/no_smooth/wood
	name = "wood table"
	desc = "A simple round wooden table. You wish you could make something this nice."
	icon_state = "table_wood_round"
	max_integrity = 150

/obj/structure/table/no_smooth/wood/square
	name = "wood table"
	desc = "A simple squared wooden table. You wish you could make something this nice."
	icon_state = "table_wood_square"

/obj/structure/table/no_smooth/wood/low
	name = "coffee table"
	desc = "A table that is relatively low to the ground, designed to prop things up on while you sit on your sofa."
	icon_state = "table_wood_low"

/obj/structure/table/no_smooth/wood/stand
	name = "bed stand"
	desc = "A tall table that is often found beside beds or landfills."
	icon_state = "table_wood_stand"

/obj/structure/table/no_smooth/wood/end
	name = "console end"
	desc = "A separate optional add-on for your console. More storage for books you never read!"
	icon_state = "table_wood_end"

// Wood Large tables //

/obj/structure/table/no_smooth/large/wood
	name = "wood table"
	desc = "A large oval shaped wood table. Perfect for displaying the family photos you don't have."
	icon_state = "table_wood_wide_oval"
	max_integrity = 200

/obj/structure/table/no_smooth/large/wood/square
	desc = "A large rectangular wood table. Very sturdy."
	icon_state = "table_wood_wide_square"

/obj/structure/table/no_smooth/large/wood/desk
	name = "wood desk"
	desc = "A full size wood desk, used by people whose work would be far easier if you weren't there."
	icon_state = "desk_wood"

/obj/structure/table/no_smooth/large/wood/desk/alt
	name = "wood desk"
	desc = "A compact wood desk, used by a wide variety of business-inclined individuals."
	icon_state = "desk_wood_small"

/obj/structure/table/no_smooth/large/wood/stand
	name = "wood console"
	desc = "A smooth IDEA-branded console. Mostly just looks good in a room."
	icon_state = "stand_wood"

/obj/structure/table/no_smooth/large/wood/stand/alt
	icon_state = "stand_wood_small"

//Misc tables //

/obj/structure/table/no_smooth/dice
	name = "dice table"
	desc = "Shoot the dice with your friends. Preferably not literally."
	icon_state = "dice_dirty"
	max_integrity = 150

/obj/structure/table/no_smooth/dice/pristine
	icon_state = "dice_clean"
	max_integrity = 200


// Misc Large tables //

/obj/structure/table/no_smooth/large/cards
	name = "cards table"
	desc = "Very classy. Reminds you of that time in Las Vegas..."
	icon_state = "table_cards"
