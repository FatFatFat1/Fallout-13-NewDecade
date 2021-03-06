/obj/machinery/door/poddoor/shutters
	gender = PLURAL
	name = "shutters"
	desc = "Heavy duty metal shutters that opens mechanically."
	icon = 'icons/obj/doors/shutters.dmi'
	layer = CLOSED_DOOR_LAYER
	obj_integrity = 150000
	max_integrity = 150000
	damage_deflection = 20
	explosion_block = 5
	var/shuttersopen = 'sound/f13machines/doorshutter_open.ogg'
	var/shuttersclose = 'sound/f13machines/doorshutter_close.ogg'

/obj/machinery/door/poddoor/shutters/preopen
	icon_state = "open"
	density = 0
	opacity = 0


//shutters look like ass with things on top of them.

/obj/machinery/door/poddoor/shutters/New()
	..()
	layer = CLOSED_DOOR_LAYER	//to handle /obj/machinery/door/New() resetting the layer.


/obj/machinery/door/poddoor/shutters/open(ignorepower = 0)
	..()
	playsound(src.loc, shuttersopen, 50, 0)
	layer = CLOSED_DOOR_LAYER


/obj/machinery/door/poddoor/shutters/close(ignorepower = 0)
	..()
	playsound(src.loc, shuttersclose, 50, 0)
	layer = CLOSED_DOOR_LAYER