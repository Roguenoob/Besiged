/obj/item/clothing/under/roguetown
	slot_flags = ITEM_SLOT_PANTS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	body_parts_covered = GROIN|LEGS
	icon = 'icons/roguetown/clothing/pants.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/pants.dmi'
	equip_sound = 'sound/blank.ogg'
	drop_sound = 'sound/blank.ogg'
	pickup_sound =  'sound/blank.ogg'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_pants.dmi'
	sleevetype = "leg"
	equip_delay_self = 30
	bloody_icon_state = "bodyblood"
	sewrepair = TRUE
	r_sleeve_zone = BODY_ZONE_R_LEG
	l_sleeve_zone = BODY_ZONE_L_LEG
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	flags_inv = HIDECROTCH|HIDEBUTT

/obj/item/clothing/under/roguetown/AdjustClothes(mob/user)
#ifdef MATURESERVER
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			icon_state = "[initial(icon_state)]_t"
			body_parts_covered = null
			slowdown += 2
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_pants()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_pants()
#else
	return
#endif

/obj/item/clothing/under/roguetown/tights
	name = "tights"
	desc = "A pair of form fitting tights."
	gender = PLURAL
	icon_state = "tights"
	item_state = "tights"
//	adjustable = CAN_CADJUST

/obj/item/clothing/under/roguetown/tights/random/Initialize()
	color = pick("#544236", "#435436", "#543836", "#79763f")
	..()

/obj/item/clothing/under/roguetown/tights/black
	color = CLOTHING_BLACK

/obj/item/clothing/under/roguetown/tights/red
	color = CLOTHING_RED

/obj/item/clothing/under/roguetown/tights/purple
	color = CLOTHING_PURPLE

/obj/item/clothing/under/roguetown/tights/jester
	desc = "Funny tights!"
	color = "#1E3B20"

/obj/item/clothing/under/roguetown/tights/lord
	color = "#865c9c"

/obj/item/clothing/under/roguetown/tights/vagrant
	r_sleeve_status = SLEEVE_TORN
	body_parts_covered = GROIN|LEG_LEFT

/obj/item/clothing/under/roguetown/tights/vagrant/l
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_TORN
	body_parts_covered = GROIN|LEG_RIGHT

/obj/item/clothing/under/roguetown/tights/vagrant/Initialize()
	color = pick("#6b5445", "#435436", "#704542", "#79763f")
	..()

/obj/item/clothing/under/roguetown/tights/sailor
	name = "pants"
	icon_state = "sailorpants"

/obj/item/clothing/under/roguetown/webs
	name = "webbing"
	desc = "a fine webbing made from spidersilk, popular fashion within the underdark"
	gender = PLURAL
	icon_state = "webs"
	item_state = "webs"
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

/obj/item/clothing/under/roguetown/trou
	name = "work trousers"
	desc = "Good quality trousers worn by laborers."
	gender = PLURAL
	icon_state = "trou"
	item_state = "trou"
//	adjustable = CAN_CADJUST
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 10, "stab" = 20, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT)
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/under/roguetown/trou/leather
	name = "leather trousers"
	icon_state = "leathertrou"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/trou/leather/mourning
	name = "mourning trousers"
	icon_state = "leathertrou"
	color = "#151615"

/obj/item/clothing/under/roguetown/trou/shadowpants
	name = "silk tights"
	desc = "Form-fitting legwear. Almost too form-fitting."
	icon_state = "shadowpants"
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/under/roguetown/chainlegs
	name = "steel chain chausses"
	desc = "Chain leggings composed of interlinked metal rings."
	gender = PLURAL
	icon_state = "chain_legs"
	item_state = "chain_legs"
//	adjustable = CAN_CADJUST
	sewrepair = FALSE
	armor = list("blunt" = 60, "slash" = 100, "stab" = 80, "bullet" = 20, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = CHAINHIT
	max_integrity = 300
	var/do_sound = FALSE
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/brayette
	name = "brayette"
	desc = ""
	gender = PLURAL
	icon_state = "chain_bootyshorts"
	item_state = "chain_bootyshorts"
	sewrepair = FALSE
	armor = list("blunt" = 70, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	body_parts_covered = GROIN
	blocksound = CHAINHIT
	max_integrity = 300
	drop_sound = 'sound/foley/dropsound/chain_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/chainlegs/iron
	name = "iron chain chausses"
	icon_state = "ichain_legs"
	max_integrity = 200
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron

/obj/item/clothing/under/roguetown/platelegs
	name = "steel plate chausses"
	desc = "Reinforced armor to protect the legs."
	gender = PLURAL
	icon_state = "plate_legs"
	item_state = "plate_legs"
//	adjustable = CAN_CADJUST
	sewrepair = FALSE
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = PLATEHIT
	max_integrity = 400
	var/do_sound = FALSE
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	smelt_bar_num = 2
	resistance_flags = FIRE_PROOF


/obj/item/clothing/under/roguetown/chainlegs/skirt
	name = "steel chain skirt"
	desc = "Interlinked metal rings that drape down to the crotch and no farther."
	icon_state = "chain_skirt"
	item_state = "chain_skirt"
	body_parts_covered = GROIN

/obj/item/clothing/under/roguetown/platelegs/skirt
	name = "steel plate skirt"
	desc = "Reinforced armor that doesn't even protect the legs."
	icon_state = "plate_skirt"
	item_state = "plate_skirt"
	body_parts_covered = GROIN

/obj/item/clothing/under/roguetown/loincloth
	name = "loincloth"
	desc = ""
	icon_state = "loincloth"
	item_state = "loincloth"
//	adjustable = CAN_CADJUST
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD

/obj/item/clothing/under/roguetown/loincloth/brown
	color = CLOTHING_BROWN

/obj/item/clothing/under/roguetown/loincloth/pink
	color = "#b98ae3"

/obj/item/clothing/under/roguetown/grenzelpants
	name = "grenzelhoftian paumpers"
	desc = "Padded pants for extra comfort and protection, adorned in vibrant colors."
	icon_state = "grenzelpants"
	item_state = "grenzelpants"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	detail_tag = "_detail"
	armor = list("blunt" = 15, "slash" = 15, "stab" = 15, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT)
	var/picked = FALSE

/obj/item/clothing/under/roguetown/grenzelpants/attack_right(mob/user)
	..()
	if(!picked)
		var/list/colors = list(
		"Swan White"="#ffffff",
		"Lavender"="#865c9c",
		"Royal Purple"="#5E4687",
		"Wine Rouge"="#752B55",
		"Sow's skin"="#CE929F",
		"Knight's Red"="#933030",
		"Madroot Red"="#AD4545",
		"Marigold Orange"="#E2A844",
		"Politely, Yuck"="#685542",
		"Astrata's Yellow"="#FFFD8D",
		"Bog Green"="#375B48",
		"Seafoam Green"="#49938B",
		"Woad Blue"="#395480",
		"Cornflower Blue"="#749EE8",
		"Blacksteel Grey"="#404040",)

		var/choice = input(user, "Choose a color.", "Grenzelhoft colors") as anything in colors
		var/playerchoice = colors[choice]
		picked = TRUE
		detail_color = playerchoice
		detail_tag = "_detail"
		update_icon()
		if(loc == user && ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_pants()

/obj/item/clothing/under/roguetown/grenzelpants/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

//----------------- BLACKSTEEL---------------------

/obj/item/clothing/under/roguetown/blacksteel/platelegs
	name = "Blacksteel Plate Chausses"
	desc = "Reinforced leg plates forged of durable blacksteel."
	gender = PLURAL
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bklegs"
	item_state = "bklegs"
//	adjustable = CAN_CADJUST
	sewrepair = FALSE
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "bullet" = 50, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	blocksound = PLATEHIT
	max_integrity = 500
	var/do_sound = FALSE
	drop_sound = 'sound/foley/dropsound/armor_drop.ogg'
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/blacksteel
	r_sleeve_status = SLEEVE_NOMOD
	l_sleeve_status = SLEEVE_NOMOD
	smelt_bar_num = 2
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/trou/leather/pontifex
	name = "pontifex's chaqchur"
	desc = "A handmade pair of baggy, thin leather pants. They end in a tight stocking around the calf, ballooning out around the thigh."
	icon_state = "monkpants"
	item_state = "monkpants"
	naledicolor = TRUE
