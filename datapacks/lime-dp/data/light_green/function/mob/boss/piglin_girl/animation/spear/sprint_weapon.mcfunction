execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches ..1 run function light_green:mob/boss/piglin_girl/sprint_weapon
tag @s add light_green.attacker
execute if score @s light_green.boss.animation matches ..1 positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=2,dy=2,dz=2,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run damage @s 7 light_green:spear_sprint by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
tag @s remove light_green.attacker
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,distance=..3.25] run function light_green:mob/boss/piglin_girl/skill/spear/sprint_weapon_end