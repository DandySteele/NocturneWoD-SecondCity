/obj/structure/retail/hardware_store
	products_list = list(
		new /datum/data/vending_product("full gas can", /obj/item/gas_can/full),
		new /datum/data/vending_product("tire iron", /obj/item/melee/vamp/tire, 50),
		// NOCTURNE ADDITION START
		new /datum/data/vending_product("screwdriver", /obj/item/screwdriver, 10),
		new /datum/data/vending_product("crowbar", /obj/item/crowbar/large, 20),
		new /datum/data/vending_product("wrench", /obj/item/wrench, 15),
		new /datum/data/vending_product("wirecutters", /obj/item/wirecutters, 10),
		new /datum/data/vending_product("cable coil", /obj/item/stack/cable_coil/five, 5),
		new /datum/data/vending_product("glass", /obj/item/stack/sheet/glass, 5),
		new /datum/data/vending_product("plastic", /obj/item/stack/sheet/plastic, 5),
		new /datum/data/vending_product("metal", /obj/item/stack/sheet/iron, 10),
		new /datum/data/vending_product("Modello 3 Coffee Maker", /obj/machinery/coffeemaker, 750),
		new /datum/data/vending_product("Soda Dispenser", /obj/machinery/chem_dispenser/drinks/fullupgrade/fastfood, 600),
		new /datum/data/vending_product("Alcohol Dispenser", /obj/machinery/chem_dispenser/drinks/beer/fullupgrade/nocturne, 800),
		// NOCTURNE ADDITION END
		new /datum/data/vending_product("lockpick", /obj/item/vamp/keys/hack, 50),
		new /datum/data/vending_product("respirator", /obj/item/clothing/mask/gas/vampire),
		new /datum/data/vending_product("baseball bat", /obj/item/melee/baseball_bat/vamp, 200),
		new /datum/data/vending_product("knife", /obj/item/knife/vamp, 100),
		new /datum/data/vending_product("stake", /obj/item/vampire_stake, 100),
		new /datum/data/vending_product("scythe", /obj/item/scythe/vamp, 2000),
		new /datum/data/vending_product("shovel", /obj/item/shovel/vamp, 800),
		new /datum/data/vending_product("box of light bulbs", /obj/item/storage/box/lights/mixed, 80),
		new /datum/data/vending_product("construction vest", /obj/item/clothing/suit/hazardvest, 80)
	)
	product_types = list(
		/obj/item/fishing_rod,
		/obj/item/storage/toolbox/fishing,
		/obj/item/storage/box/fishing_lures
	)
