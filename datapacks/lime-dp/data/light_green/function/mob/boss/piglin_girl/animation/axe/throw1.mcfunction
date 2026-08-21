
execute on target run tag @s add light_green.target
execute facing entity @n[tag=light_green.target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 4 if entity @n[tag=light_green.target] facing entity @n[tag=light_green.target] feet run function light_green:mob/boss/piglin_girl/throw_thing/axe/summon
execute if score @s light_green.boss.animation matches 4 unless entity @n[tag=light_green.target] rotated as @s run function light_green:mob/boss/piglin_girl/throw_thing/axe/summon
execute as @n[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/axe/throw2