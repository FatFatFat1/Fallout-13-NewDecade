//Fallout 13 contributor packs directory

/datum/content_pack
	var
		name = "Чего блять?"
		id = "shit"
		desc = "Something is wrong! Maybe you already have this content pack?"
		list/items = list()
		list/sorted_items = list()
		list/roles = list()
		list/pets = list()
		price = 99999
	proc
		on_set(client/client)
			return 1
		generate_sorted_list() //
			sorted_items["weapon"] = list()
			sorted_items["misc"] = list()
			sorted_items["head"] = list()
			sorted_items["armor"] = list()
			sorted_items["gloves"] = list()
			sorted_items["shoes"] = list()
			sorted_items["uniform"] = list()
		sort_items()
			for(var/item in items)
				if(get_var_from_type(item, "w_class") < WEIGHT_CLASS_NORMAL)
					sorted_items["misc"] |= item
				sorted_items[slot_name_by_type(item)] |= item
	New()
		. = ..()
		if(!items.len)
			return .
		generate_sorted_list()
		sort_items()


/datum/content_pack/starter
	name = "Фоллаут 13: Набор новичка"
	id = "starter"
	desc = "<b>Доступен для: Всех фракций!</b><br>Любой может иметь эти ВАЖНЫЕ вещи, абсолютно бесплатно!<br><i>Важно: Чтобы взять оружие из этого набора, посмотрите слот карманов. Так-же, некоторые виды одежды могут быть недоступны, ввиду дресс-кода фракций. Роль обывателя(settler) имеет доступ ко всему что тут перечисленно.</i>"
	items = list(
		/obj/item/clothing/shoes/f13/rag,
		// Hats
		/obj/item/clothing/head/f13/headscarf,
		/obj/item/clothing/head/f13/pot,
		// Goggles
		/obj/item/clothing/glasses/regular,
		// Uniforms
		/obj/item/clothing/under/pants/f13/ghoul,
		/obj/item/clothing/under/pants/f13/cloth,
		/obj/item/clothing/under/pants/f13/caravan,
		/obj/item/clothing/under/f13/rag,
		/obj/item/clothing/under/f13/tribal,
		/obj/item/clothing/under/f13/female/tribal,
		/obj/item/clothing/under/f13/settler,
		/obj/item/clothing/under/f13/brahmin,
		/obj/item/clothing/under/f13/female/brahmin,
		/obj/item/clothing/under/f13/worn,
		// Suits
		/obj/item/clothing/suit/f13/mantle_liz,
		// Items
		/obj/item/weapon/reagent_containers/food/drinks/flask/survival,
		/obj/item/weapon/dice/d6,
		/obj/item/toy/cards/deck,
		/obj/item/weapon/storage/fancy/cigarettes,
		/obj/item/weapon/storage/fancy/cigarettes/tortoise,
		/obj/item/weapon/storage/box/matches,
		// Weapons
		/obj/item/weapon/pipe,
		/obj/item/weapon/tireiron,
		/obj/item/weapon/pan,
		/obj/item/weapon/kitchen/rollingpin,
		/obj/item/weapon/kitchen/knife,
		/obj/item/weapon/kitchen/knife/butcher,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/shovel,
		/obj/item/weapon/hammer,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/screwdriver,
		/obj/item/weapon/wirecutters,
		/obj/item/weapon/wrench,
		/obj/item/weapon/weldingtool/experimental,
		/obj/item/weapon/restraints/legcuffs/bola
		)
	roles = list(
		/datum/job/gangleader,
		/datum/job/mayor,
		/datum/job/general,
	//	/datum/job/legate,
		/datum/job/elder,
		/datum/job/colonel,
		/datum/job/overseer
		//datum/job/preacher
		)
	price = -1

	on_set(client/client)
		client.add_race("ghoul", /datum/species/ghoul)
		client.add_race("human", /datum/species/human)

/datum/content_pack/cigarettes
	name = "Сигареты"
	id = "cigarettes"
	desc = "<b>Доступно для: Всех фракций!</b><br><i>Важно: Всемирная Организация Здравоохранения предупреждает - курение вредит здоровью. Вдыхание табачного дыма плохо сказывается на вашем здоровье!</i>"
	items = list(
		/obj/item/weapon/storage/fancy/rollingpapers,
		/obj/item/weapon/storage/fancy/cigarettes/cigpack_myron,
		/obj/item/weapon/storage/fancy/cigarettes/cigpack_joy,
		/obj/item/clothing/mask/cigarette,
		/obj/item/clothing/mask/cigarette/rollie,
		/obj/item/clothing/mask/cigarette/cigar,
		/obj/item/clothing/mask/cigarette/cigar/cohiba,
		/obj/item/clothing/mask/cigarette/cigar/havana,
		/obj/item/weapon/lighter
		)
	price = 5000

/datum/content_pack/team_fortress
	name = "Набор шапок"
	id = "team_fortress"
	desc = "<b>Доступно для: Нейтралов, Горожан и рейдеров!</b><br>Получите уникальнейший опыт игры в Фоллаут 13 с нашим новым набором шапок.<br>В этот набор входит целых пять (вау) дополнительных шапок!"
	items = list(
		/obj/item/clothing/head/soft/f13/baseball,
		/obj/item/clothing/head/soft/f13/utility,
		/obj/item/clothing/head/f13/cowboy,
		/obj/item/clothing/head/f13/bandit,
		/obj/item/clothing/head/f13/stormchaser,
		/obj/item/clothing/head/f13/gambler
		)
	price = 5000

/datum/content_pack/wardrobe
	name = "Высшая Мода"
	id = "wardrobe"
	desc = "<b>Доступно для: Нейтралов и Горожан!</b><br>Устали от того что ваш персонаж выглядит как какой-то бомж?<br>Этот набор разработан специально для вас! Новая мода пустоши 2255 года!<br>Данный набор содержит две пары обуви и целых семь замечательных костюмов.<br><i>Важно: Вы можете застегивать dark red wasteland wanderer jacket.</i>"
	items = list(
		/obj/item/clothing/shoes/f13/explorer,
		// Uniforms
		/obj/item/clothing/under/f13/relaxedwear,
		/obj/item/clothing/under/f13/spring,
		/obj/item/clothing/under/f13/merchant,
		/obj/item/clothing/under/f13/trader,
		/obj/item/clothing/under/f13/caravaneer,
		/obj/item/clothing/under/f13/petrochico,
		/obj/item/clothing/under/f13/mechanic,
		/obj/item/clothing/under/f13/lumberjack,
		/obj/item/clothing/under/f13/machinist,
		// Suits
		/obj/item/clothing/suit/f13/puffer,
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer
		)
	price = 5000

/datum/content_pack/vault13
	name = "Убежище 13"
	id = "vault13"
	desc = "<b>Доступно для: Нейтралов, Горожан и рейдеров!</b><br>Убежище 13 открылось очеь давно, но вы все еще можете примерить на себя их комбинезоны, ну или просто притворяться выходцем из убежища и ловить пули.</i>"
	items = list(
		/obj/item/clothing/under/f13/vault/v13,
		/obj/item/weapon/reagent_containers/food/drinks/flask/vault13,
		/obj/item/weapon/lighter/vault13
		)
	price = 7500

/datum/content_pack/bard
	name = "Музыкальные инструменты"
	id = "bard"
	desc = "<b>Доступны для: Всех фракций!</b><br>Russian General says, :<br><i>\"Я не люблю рок-н-ролл. Он слишком громкий! Мне нравится Фолк, мягкая, и приятная музыка. Полька, вальс, да что угодно!\"</i><br><b>Six String Samurai (1998)</b>"
	items = list(
		/obj/item/device/harmonica,
		/obj/item/device/instrument/guitar
		)
	price = 1000

/datum/content_pack/doom
	name = "Doom"
	id = "doom"
	desc = "<b>Available to: Neutral and Raider factions only!</b><br>Carefully selected items from Doom game.<br><i>Note: Union Aerospace Corporation welcomes you aboard a shuttle leaving Earth on the way to Mars. Please fasten your seatbelts and have a safe flight!</i>"
	items = list(
		/obj/item/clothing/head/helmet/f13/doom,
		/obj/item/clothing/suit/armor/f13/doom,
		/obj/item/clothing/under/pants/f13/doom,
		/obj/item/clothing/gloves/f13/doom,
		/obj/item/clothing/shoes/f13/doom,
		/obj/item/weapon/mounted_chainsaw
		)
	price = 100000

/datum/content_pack/followers
	name = "Набор Последователей"
	id = "follower"
	desc = "<b>Доступно для: Всех фракций!</b> :Если все доктора на пустоши умрут, то кто вас будет лечить?"
	items = list(
		/obj/item/clothing/suit/toggle/labcoat/f13/followers,
		/obj/item/clothing/under/f13/doctor,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/gloves/color/latex,
		/obj/item/clothing/glasses/regular,
		///obj/item/clothing/mask/surgical/joy,
		/obj/item/clothing/mask/surgical,
		/obj/item/weapon/storage/backpack/satchel/leather,
		/obj/item/weapon/storage/firstaid
	)
	price = 5000

/datum/content_pack/trooper_armor
	name = "Набор брони НКР"
	id = "trooper_armor"
	desc = "<b>Доступно для: НКР!</b><br>Сформируйте собственный отряд со совими друзьями, с этим набором вы даже не нарушите устав НКР!<br>Этот набор включает в себя шесть дополнительных покрасок для брони:<br>White star insignia<br>Red star insignia<br>Holy cross insignia<br>Hear symbol insignia<br>Radiation symbol insignia<br>White skull insignia"
	items = list(
		/obj/item/clothing/suit/armor/f13/ncr/patriot,
		/obj/item/clothing/suit/armor/f13/ncr/commie,
		/obj/item/clothing/suit/armor/f13/ncr/preacher,
		/obj/item/clothing/suit/armor/f13/ncr/lover,
		/obj/item/clothing/suit/armor/f13/ncr/stalker,
		/obj/item/clothing/suit/armor/f13/ncr/punisher
		)
	price = 1000

/*
/datum/content_pack/heavy_trooper
	name = "NCR Heavy Infantry Corps"
	id = "heavy_trooper"
	desc = "<b>Available to: NCR Trooper and NCR Sergeant roles only!</b><br>Become the NCR Heavy Trooper with a set of NCR salvaged power armor and a big gun!"
	items = list(
		/obj/item/clothing/head/helmet/power_armor/ncr,
		/obj/item/clothing/suit/armor/f13/power_armor/ncr,
		/obj/item/weapon/twohanded/largehammer,
		/obj/item/weapon/gun/ballistic/automatic/rifle,
		/obj/item/ammo_box/magazine/F13/m308
		)
	price = 180
*/

/datum/content_pack/khan
	name = "Великие Ханы"
	id = "khan"
	desc = "<b>Доступно для: Нейтралы и Рейдеры!</b><br>Величие Великих Ханов будет восстановлено с этим замечательным набором!<br>Или посмотрите на это копью, с помощью которого вы можете насмерть затыкать таракана.<br><i>Важно: Вы можете застегивать Great Khan jacket .</i>"
	items = list(
		/obj/item/clothing/head/helmet/f13/khan,
		/obj/item/clothing/suit/toggle/labcoat/f13/khan,
		/obj/item/clothing/under/pants/f13/khan,
		/obj/item/clothing/shoes/f13/khan,
		/obj/item/weapon/twohanded/tribal_spear,
		/obj/item/weapon/restraints/legcuffs/bola/tribal
		)
	price = 8000

/datum/content_pack/punk
	name = "Панк"
	id = "punk"
	desc = "<b>Доступно для: Нейтралы и Рейдеры!</b><br>Если вам кажется что в игре недостаточно металла, этот набор всё исправит.<br><i>ГОРШОК МЁРТВ!</i><br>"
	items = list(
		/obj/item/clothing/shoes/f13/military/diesel,
		/obj/item/clothing/shoes/f13/military/female/diesel,
		/obj/item/clothing/suit/armor/f13/punk,
		/obj/item/device/instrument/eguitar,
		/obj/item/key/motorcycle
		)
	price = 7500

/datum/content_pack/off
	name = "Набор Бейсболиста"
	id = "off"
	desc = "<b>Доступно для: Нейтралы и Рейдеры!</b><br>Чательно восстановленные мухобои и форма грозных бойцов - Бейсболистов."
	items = list(
		/obj/item/clothing/head/soft/black,
		/obj/item/clothing/under/f13/batter,
		/obj/item/weapon/twohanded/baseball,
		//obj/item/clothing/gloves/f13/baseball,
		/obj/item/clothing/shoes/f13/fancy
		)
	price = 2500

/datum/content_pack/madmax
	name = "Безумный Макс"
	id = "madmax"
	desc = "<b>Доступно для: Нейтралы и Рейдеры!</b><br>Чательно отобранные предметы из вселенной Безумного Макса.<br><i>Важно: Steering wheel используется как ключи от машин.<br>В память о БартеНиксоне.</i>"
	items = list(
		/obj/item/clothing/suit/f13/mfp,
		/obj/item/clothing/suit/f13/mfp/raider,
		/obj/item/weapon/reagent_containers/food/snacks/f13/dog,
		/obj/item/clothing/head/f13/safari,
		/obj/item/clothing/under/pants/f13/warboy,
		/obj/item/key/buggy/wheel
		)
	price = 10000

/datum/content_pack/trooper_armor
	name = "Броня подразделений НКР"
	id = "trooper_armor"
	desc = "<b>Доступно для: Только для Соладат НКР и Сержанта!</b><br>Сформируйте ударный отряд вместе со своими друзьями, нося этот стильный сет брони!<br>В сет входят шесть покрасок для брони:<br>White star insignia<br>Red star insignia<br>Holy cross insignia<br>Hear symbol insignia<br>Radiation symbol insignia<br>White skull insignia"
	items = list(
		/obj/item/clothing/suit/armor/f13/ncr/patriot,
		/obj/item/clothing/suit/armor/f13/ncr/commie,
		/obj/item/clothing/suit/armor/f13/ncr/preacher,
		/obj/item/clothing/suit/armor/f13/ncr/lover,
		/obj/item/clothing/suit/armor/f13/ncr/stalker,
		/obj/item/clothing/suit/armor/f13/ncr/punisher
		)
	price = 8000

/datum/content_pack/glowing_ghoul
	name = "Игровая раса: Светящийся Гуль"
	id = "glowing_ghoul"
	desc = "<b>Доступно для: Кого угодно, кроме анклавовцев!</b><br>Данный набор, позволяет вам создать светящегося гуля!"
	price = 10000

	on_set(client/client)
		client.add_race("glowing ghoul", /datum/species/ghoul/glowing)