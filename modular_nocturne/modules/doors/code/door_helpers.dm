/obj/effect/mapping_helpers/door/deadbolt
	icon_state = "deadbolt_north"
	icon = 'modular_nocturne/modules/doors/icons/mapping_helpers.dmi'
	var/deadbolt_direction

/obj/effect/mapping_helpers/door/deadbolt/payload(obj/structure/vampdoor/payload)
	payload.has_deadbolt = TRUE
	payload.deadbolt_direction = deadbolt_direction

/obj/effect/mapping_helpers/door/deadbolt/north
	icon_state = "deadbolt_north"
	deadbolt_direction = NORTH

/obj/effect/mapping_helpers/door/deadbolt/south
	icon_state = "deadbolt_south"
	deadbolt_direction = SOUTH

/obj/effect/mapping_helpers/door/deadbolt/east
	icon_state = "deadbolt_east"
	deadbolt_direction = EAST

/obj/effect/mapping_helpers/door/deadbolt/west
	icon_state = "deadbolt_west"
	deadbolt_direction = WEST
