/mob/living/simple_animal/hostile/liberatormk0
	name = "������������ ��0"
	desc = "��������� ��������� ������������� ����� � ������� ������� � ���� ������. ���� ���� �����-������ ����� �������� ��������� ���������, �� ������� ����� ����������, ��� ������ ����� ������������� ����. ��� ��������� �������������� ���������� ���������� �����.."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "liberator"
	icon_living = "liberator"
	icon_dead = "liberator_d"
	icon_gib = "liberator_g"
	speak_chance = 15
	turns_per_move = 6
	environment_smash = 0
	response_help = "touches"
	response_disarm = "shoves"
	response_harm = "����"
	move_to_delay = 3
	stat_attack = 1
	robust_searching = 1
	maxHealth = 65
	health = 65
	self_weight = 15
	healable = 0

	faction = list("hostile")

	//ambient_sound = 'sound/f13npc/eyebot_loop.ogg'

	//sound_speak_chance = 1
	//sound_speak = list('sound/machines/buzz-sigh.ogg','sound/misc/interference.ogg')
	//sound_speak = list('sound/f13music/enclave_dixie.ogg','sound/f13music/enclave_hymn.ogg','sound/f13music/enclave_montezuma.ogg','sound/f13music/enclave_presidential.ogg','sound/f13music/enclave_stars.ogg', 'sound/f13music/enclave_washington.ogg', 'sound/f13music/enclave_yankee.ogg')

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/libdetected.ogg'

	death_sound = 'sound/f13npc/robot_death.ogg'

	harm_intent_damage = 10
	melee_damage_lower = 1
	melee_damage_upper = 4
	minimum_distance = 5
	retreat_distance = 8
	attacktext = "punches"
	attack_sound = 'sound/f13npc/libattack.ogg'
	a_intent = "harm"
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	status_flags = CANPUSH
	vision_range = 12
	aggro_vision_range = 10
	idle_vision_range = 7
	ranged = 1
	ranged_cooldown_time = 100
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'