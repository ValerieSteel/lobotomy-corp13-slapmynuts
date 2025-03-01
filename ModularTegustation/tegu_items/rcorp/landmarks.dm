GLOBAL_LIST_INIT(easycombat, list(
	/mob/living/simple_animal/hostile/abnormality/ppodae,
	/mob/living/simple_animal/hostile/abnormality/blue_shepherd,
	/mob/living/simple_animal/hostile/abnormality/kqe,
	/mob/living/simple_animal/hostile/abnormality/dimensional_refraction,
	/mob/living/simple_animal/hostile/abnormality/helper,
	/mob/living/simple_animal/hostile/abnormality/apex_predator))

GLOBAL_LIST_INIT(easysupport, list(/mob/living/simple_animal/hostile/abnormality/fragment,
	/mob/living/simple_animal/hostile/abnormality/funeral,
	/mob/living/simple_animal/hostile/abnormality/voiddream,
	/mob/living/simple_animal/hostile/abnormality/pisc_mermaid,
	/mob/living/simple_animal/hostile/abnormality/rudolta,
	/mob/living/simple_animal/hostile/abnormality/redblooded))

GLOBAL_LIST_INIT(easytank, list(/mob/living/simple_animal/hostile/abnormality/jangsan,
	/mob/living/simple_animal/hostile/abnormality/scarecrow,
	/mob/living/simple_animal/hostile/abnormality/warden,
	/mob/living/simple_animal/hostile/abnormality/black_swan,))

GLOBAL_LIST_INIT(hardcombat, list(
	/mob/living/simple_animal/hostile/abnormality/clouded_monk,
	/mob/living/simple_animal/hostile/abnormality/clown,
	/mob/living/simple_animal/hostile/abnormality/nosferatu,
	/mob/living/simple_animal/hostile/abnormality/big_bird,
	/mob/living/simple_animal/hostile/abnormality/big_wolf))

GLOBAL_LIST_INIT(hardsupport, list(/mob/living/simple_animal/hostile/abnormality/sphinx,
	/mob/living/simple_animal/hostile/abnormality/judgement_bird,
	/mob/living/simple_animal/hostile/abnormality/ebony_queen,
	/mob/living/simple_animal/hostile/abnormality/thunder_bird,
	/mob/living/simple_animal/hostile/abnormality/despair_knight,
	/mob/living/simple_animal/hostile/abnormality/alriune))

GLOBAL_LIST_INIT(hardtank, list(/mob/living/simple_animal/hostile/abnormality/melting_love,
	/mob/living/simple_animal/hostile/abnormality/nothing_there,
	/mob/living/simple_animal/hostile/abnormality/censored,
	/mob/living/simple_animal/hostile/abnormality/titania,
	/mob/living/simple_animal/hostile/abnormality/golden_apple,
	/mob/living/simple_animal/hostile/abnormality/greed_king,))

//Split into 3 groups, Combat for damaging abnos, Support for ranged, AOE and otherwise support abnos, and tank for abnos that can take a beating reliably
/obj/effect/landmark/abnospawn/easycombat
	name = "easy combat abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x4"

/obj/effect/landmark/abnospawn/easycombat/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.easycombat)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL


/obj/effect/landmark/abnospawn/easysupport
	name = "easy support abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x3"

/obj/effect/landmark/abnospawn/easysupport/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.easysupport)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL


/obj/effect/landmark/abnospawn/easytank
	name = "easy tank abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x2"

/obj/effect/landmark/abnospawn/easytank/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.easytank)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL

/obj/effect/landmark/abnospawn/hardcombat
	name = "hard combat abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x4"

/obj/effect/landmark/abnospawn/hardcombat/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.hardcombat)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL


/obj/effect/landmark/abnospawn/hardsupport
	name = "hard support abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x3"

/obj/effect/landmark/abnospawn/hardsupport/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.hardsupport)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL


/obj/effect/landmark/abnospawn/hardtank
	name = "hard tank abno spawner"
	desc = "It spawns an abno. Notify a coder. Thanks!"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "x2"

/obj/effect/landmark/abnospawn/hardtank/Initialize()
	..()
	var/spawning = pick_n_take(GLOB.hardtank)
	new spawning(get_turf(src))
	return INITIALIZE_HINT_QDEL
