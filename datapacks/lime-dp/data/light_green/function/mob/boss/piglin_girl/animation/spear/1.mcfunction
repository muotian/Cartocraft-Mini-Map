execute if score @s light_green.boss.animation matches 5..17 on target run tag @s add light_green.damage_locator
execute facing entity @n[tag=light_green.damage_locator] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 5 at @n[tag=light_green.damage_locator] run summon marker ~ ~ ~ {Tags:[light_green.damage_locator]}
execute if score @s light_green.boss.animation matches 14 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 12 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.spear.attack hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.damage_locator] feet run function light_green:mob/boss/piglin_girl/animation/spear/damage
execute if score @s light_green.boss.animation matches 0..5 as @e[tag=light_green.damage_locator,type=!#light_green:no_hp] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches 0 as @n[tag=light_green.damage_locator,type=!#light_green:no_hp] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches 0 run kill @n[tag=light_green.damage_locator,type=marker]
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/spear/2