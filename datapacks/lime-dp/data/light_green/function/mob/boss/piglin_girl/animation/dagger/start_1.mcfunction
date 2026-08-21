execute on target run tag @s add light_green.damage_locator
execute facing entity @n[tag=light_green.damage_locator] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.damage_locator] feet run function light_green:mob/boss/piglin_girl/animation/dagger/damage
execute as @n[tag=light_green.damage_locator] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/dagger/2