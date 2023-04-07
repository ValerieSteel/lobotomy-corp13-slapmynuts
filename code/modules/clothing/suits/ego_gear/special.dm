// Special Armor doesn't have any armors or attribute requirements, maybe we should put twi and paradise there, idk idk

/obj/item/clothing/suit/armor/ego_gear/rabbit
	name = "\improper rabbit team command suit"
	desc = "An armored combat suit worn by R-Corporation mercenaries in the field, interestingly"
	icon_state = "rabbit"
	armor = list(RED_DAMAGE = 50, WHITE_DAMAGE = 50, BLACK_DAMAGE = 50, PALE_DAMAGE = 50)
	equip_slowdown = 0

/obj/item/clothing/suit/armor/ego_gear/rabbit/grunts
	name = "\improper rabbit team suit"
	desc = "An armored combat suit worn by R-Corporation mercenaries in the field"
	icon_state = "rabbit_grunt"

//This is tutorial armor
/obj/item/clothing/suit/armor/ego_gear/rookie
	name = "rookie"
	desc = "This armor is strong to red, check it's defenses to see!"
	icon_state = "rookie"
	armor = list(RED_DAMAGE = 40, WHITE_DAMAGE = -40, BLACK_DAMAGE = 0, PALE_DAMAGE = 0)

/obj/item/clothing/suit/armor/ego_gear/fledgling
	name = "fledgling"
	desc = "This armor is strong to white, check it's defenses to see!"
	icon_state = "fledgling"
	armor = list(RED_DAMAGE = 0, WHITE_DAMAGE = 40, BLACK_DAMAGE = -40, PALE_DAMAGE = 0)

/obj/item/clothing/suit/armor/ego_gear/apprentice
	name = "apprentice"
	desc = "This armor is strong to black, check it's defenses to see!"
	icon_state = "apprentice"
	armor = list(RED_DAMAGE = 0, WHITE_DAMAGE = 0, BLACK_DAMAGE = 40, PALE_DAMAGE = -40)

/obj/item/clothing/suit/armor/ego_gear/freshman
	name = "freshman"
	desc = "This armor is strong to pale, check it's defenses to see!"
	icon_state = "freshman"
	armor = list(RED_DAMAGE = -40, WHITE_DAMAGE = 0, BLACK_DAMAGE = 0, PALE_DAMAGE = 40)

//wcorp
/obj/item/clothing/suit/armor/ego_gear/wcorp
	name = "\improper w corp armor vest"
	desc = "A light armor vest worn by W corp. It's light as a feather."
	icon_state = "w_corp"
	armor = list(RED_DAMAGE = 30, WHITE_DAMAGE = 30, BLACK_DAMAGE = 30, PALE_DAMAGE = 30)
	slowdown = -0.1
	flags_inv = null
	attribute_requirements = list(
							FORTITUDE_ATTRIBUTE = 55,
							PRUDENCE_ATTRIBUTE = 55,
							TEMPERANCE_ATTRIBUTE = 55,
							JUSTICE_ATTRIBUTE = 55
							)

/obj/item/clothing/head/wcorp //No armor since the ego-gears do it's job.
	name = "\improper w-corp cap"
	desc = "A ball cap worn by w-corp."
	icon_state = "what"
	icon = 'icons/obj/clothing/ego_gear/head.dmi'
	worn_icon = 'icons/mob/clothing/ego_gear/head.dmi'

