advancement revoke @s only pink:skill1/black_kill

tag @s remove pink.black1.kill
#
scoreboard players add @s[scores={pink.mana_u=..7}] pink.mana_u 1

scoreboard players add @s pink.black.strengthen_attack 1
scoreboard players set @s[scores={pink.black.strengthen_attack=4..}] pink.black.strengthen_attack 4

#
title @s times 3 5 5
title @s title {"text":"\u8000","font":"pink:misc","shadow_color":16777215}
playsound minecraft:entity.wither.hurt player @s ~ ~ ~ 0.5 1

# Armor - weakness
execute if items entity @s armor.head *[custom_data~{pink_armor:1b,pink_armor_:"black"}] run effect give @e[distance=..6,type=!#pink:object,type=!player] weakness 10 0 false

