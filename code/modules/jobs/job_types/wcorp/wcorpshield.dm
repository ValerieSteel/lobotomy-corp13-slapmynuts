GLOBAL_LIST_INIT(l2bsquads, list("Axe", "Buckler", "Cleaver"))

//we all know we're only adding these because kirie is a massive hong lu simp
/datum/job/wcorpl2support
	title = "W-Corp L2 Type B Support Agent"
	faction = "Station"
	department_head = list("W-Corp L3 Cleanup Captain, W-Corp Representative")
	total_positions = 3
	spawn_positions = 3
	supervisors = "Your assigned W-Corp L3 Agent and the W-Corp Representative"
	selection_color = "#1b7ced"
	exp_requirements = 120
	exp_type = EXP_TYPE_CREW
	maptype = "wcorp"

	outfit = /datum/outfit/job/wcorpl2support
	display_order = 4

	access = list() //add accesses as necessary
	minimal_access = list()

	roundstart_attributes = list(
								FORTITUDE_ATTRIBUTE = 80,
								PRUDENCE_ATTRIBUTE = 80,
								TEMPERANCE_ATTRIBUTE = 80,
								JUSTICE_ATTRIBUTE = 80
	)
	rank_title = "L2-B"
	job_important = "You take the role of backline support."
	job_notice = "You are a agent armed with a specialized w-corp weapon that mends the wounds of your allies when fully charged. Support your squadron with your equipment."

/datum/job/wcorpl2support/after_spawn(mob/living/carbon/human/H, mob/M)
	ADD_TRAIT(H, TRAIT_COMBATFEAR_IMMUNE, JOB_TRAIT)
	var/squad = pick_n_take(GLOB.l2bsquads)
	.=..()
	var/ears = null
	to_chat(M, "<span class='userdanger'>You have been assigned to the [squad] squad. </span>")
	switch(squad)
		if("Axe")
			ears = /obj/item/radio/headset/wcorp/safety
		if("Buckler")
			ears = /obj/item/radio/headset/wcorp/discipline
		if("Cleaver")
			ears = /obj/item/radio/headset/wcorp/welfare
	if(ears)
		if(H.ears)
			qdel(H.ears)
		H.equip_to_slot_or_del(new ears(H),ITEM_SLOT_EARS)



/datum/outfit/job/wcorpl2support
	name = "W-Corp L2 Type B Support Agent"
	jobtype = /datum/job/wcorpl2support

	ears = /obj/item/radio/headset/headset_welfare
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/suit/lobotomy/wcorp
	belt = null
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/color/black
	implants = list(/obj/item/organ/cyberimp/eyes/hud/security)
	head = /obj/item/clothing/head/wcorp
	suit = /obj/item/clothing/suit/armor/ego_gear/wcorp/noreq
	l_pocket = /obj/item/flashlight/seclite
	backpack_contents = list(/obj/item/storage/box/pcorp)

/datum/outfit/job/wcorpl2support/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	var/belt = pick(
		/obj/item/ego_weapon/city/wcorp/shield,
		/obj/item/ego_weapon/city/wcorp/shield/spear,
		/obj/item/ego_weapon/city/wcorp/shield/club,
		/obj/item/ego_weapon/city/wcorp/shield/axe)
	H.equip_to_slot_or_del(new belt(H),ITEM_SLOT_BELT, TRUE)
