clear @s *[custom_data~{pink_item_slot:1b}]

execute unless score @s pink.mana_u_reply matches 1.. run scoreboard players set @s pink.mana_u_reply 40
execute unless score @s pink.mana_v_reply matches 1.. run scoreboard players set @s pink.mana_v_reply 360

# cd
scoreboard players remove @s[scores={pink.star.skill.cd=1..,pink.star.skill1.card_count=0}] pink.star.skill.cd 1

execute if score @s pink.star.skill.cd matches 20 run playsound minecraft:item.trident.return player @s ~ ~ ~ 0.8 0.5
execute if score @s pink.star.skill.cd matches 20 run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 1 1

# card count 
scoreboard players set @s[scores={pink.star.skill1.card_count=1..},tag=!hold_pink_magic_staff] pink.star.skill1.card_count 0

# Black 1
tag @s[tag=pink.black1.kill] remove pink.black1.kill

# Black 3
tag @s[tag=pink.black3.player] remove pink.black3.player

# White 1
execute if entity @s[tag=pink_white_marker] at @s anchored eyes positioned ^ ^.3 ^ rotated ~ 0 run function pink:skills_1/white/marker

# White 2
scoreboard players remove @s[scores={pink.white.skill2.duration=1..}] pink.white.skill2.duration 1
execute if score @s pink.white.skill2.duration matches 1 run scoreboard players set @s pink.mana_reduce.white_skill 0

# White 3
execute if score @s pink.white.skill3.damage matches 1.. unless entity @n[tag=pink.white.skill3.marker,distance=..8] run scoreboard players reset @s pink.white.skill3.damage


###### Armor 

# Star
execute if items entity @s[tag=!pink.armor.star1] armor.chest *[custom_data~{pink_armor:1b,slot:"chest",pink_armor_:"star"}] run function pink:armor/star1/chest_wear
execute if entity @s[tag=pink.armor.star1] unless items entity @s armor.chest *[custom_data~{pink_armor:1b,slot:"chest",pink_armor_:"star"}] run function pink:armor/star1/chest_remove
effect give @s[tag=pink.armor.star1] resistance infinite 0 true

execute if items entity @s[tag=!pink.armor.star2] armor.head *[custom_data~{pink_armor:1b,slot:"head",pink_armor_:"star"}] run function pink:armor/star1/helmet_wear
execute if entity @s[tag=pink.armor.star2] unless items entity @s armor.head *[custom_data~{pink_armor:1b,slot:"head",pink_armor_:"star"}] run function pink:armor/star1/helmet_remove

execute if items entity @s[tag=!pink.armor.star3] armor.feet *[custom_data~{pink_armor:1b,slot:"feet",pink_armor_:"star"}] run function pink:armor/star1/boots_wear
execute if entity @s[tag=pink.armor.star3] unless items entity @s armor.feet *[custom_data~{pink_armor:1b,slot:"feet",pink_armor_:"star"}] run function pink:armor/star1/boots_remove

execute if entity @s[tag=pink.armor.star_set] at @s run function pink:armor/star1/set_effect
attribute @s[tag=!pink.armor.star_set] minecraft:movement_speed modifier remove minecraft:pink.star.set

scoreboard players remove @s[scores={pink.armor.star.regeneration_stop=0..}] pink.armor.star.regeneration_stop 1
execute if score @s pink.armor.star.regeneration_stop matches 0 run effect clear @s regeneration

# Blakc
execute if items entity @s[tag=!pink.armor.black1] armor.chest *[custom_data~{pink_armor:1b,slot:"chest",pink_armor_:"black"}] run function pink:armor/black1/chest_wear
execute if entity @s[tag=pink.armor.black1] unless items entity @s armor.chest *[custom_data~{pink_armor:1b,slot:"chest",pink_armor_:"black"}] run function pink:armor/black1/chest_remove
effect give @s[tag=pink.armor.black1] resistance infinite 0 true

execute if items entity @s[tag=!pink.armor.black2] armor.head *[custom_data~{pink_armor:1b,slot:"head",pink_armor_:"black"}] run function pink:armor/black1/helmet_wear
execute if entity @s[tag=pink.armor.black2] unless items entity @s armor.head *[custom_data~{pink_armor:1b,slot:"head",pink_armor_:"black"}] run function pink:armor/black1/helmet_remove

execute if items entity @s[tag=!pink.armor.black3] armor.feet *[custom_data~{pink_armor:1b,slot:"feet",pink_armor_:"black"}] run function pink:armor/black1/boots_wear
execute if entity @s[tag=pink.armor.black3] unless items entity @s armor.feet *[custom_data~{pink_armor:1b,slot:"feet",pink_armor_:"black"}] run function pink:armor/black1/boots_remove

execute if entity @s[tag=pink.armor.black_set] at @s run function pink:armor/black1/set_effect
attribute @s[tag=!pink.armor.black_set] minecraft:attack_damage modifier remove minecraft:pink.black.set


###### Item
execute as @a[scores={pink.item.wheat_pieces.break=1..}] run function pink:item/wheat_pieces/break
execute as @a[scores={pink.item.fire_pieces.break=1..}] run function pink:item/fire_pieces/break
execute as @a[scores={pink.item.wolf_pieces.break=1..}] run function pink:item/wolf_pieces/break


###### monster
execute if predicate pink:hurt on attacker at @s if entity @s[tag=pink.devour] as @p run function pink:monster/devour/damage
execute if predicate pink:hurt on attacker at @s if entity @s[tag=pink.endermite] as @p run function pink:monster/endermite/damage

#
execute if score @s pink.monster.glass.armor matches 1.. run scoreboard players remove @s pink.monster.glass.armor 1
attribute @s[scores={pink.monster.glass.armor=1}] armor modifier remove pink.monster.glass.armor

#
execute if score @s[tag=pink.abnormal_gravity] pink.monster.gravity.player_die matches 1.. if score @s pink.monster.gravity.last_time matches 1.. run function pink:monster/gravity/abnormal_gravity_remove2
