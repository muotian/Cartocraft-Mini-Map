#

scoreboard players remove @s pink.black.strengthen_attack 1
scoreboard players add @s[scores={pink.mana_u=..7},predicate= pink:probability/50] pink.mana_u 1

# Armor - 
execute if items entity @s armor.head *[custom_data~{pink_armor:1b,pink_armor_:"black"}] if predicate pink:probability/25 run scoreboard players add @s pink.black.strengthen_attack 1

# 回血
execute unless items entity @s weapon.mainhand *[custom_data~{pink_skill_1_id:2}] run return fail
execute unless predicate pink:effect/strength run return fail

effect give @s regeneration 1 3 false
scoreboard players set @s pink.armor.star.regeneration_stop 4

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 0.4 1
particle minecraft:heart ~ ~1 ~ .4 .4 .4 0.2 1




