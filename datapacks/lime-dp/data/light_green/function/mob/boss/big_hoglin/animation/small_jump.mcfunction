execute facing entity @n[tag=light_green.boss.big_hoglin.target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 2..15 run function light_green:mob/boss/big_hoglin/small_jump
execute if score @s light_green.boss.animation matches 25 run playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 3 1.5
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:entity.mule.jump hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:entity.horse.land hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 3 0

execute if score @s light_green.boss.animation matches 10 run tag @s add light_green.attacker
execute if score @s light_green.boss.animation matches 10 at @s positioned ~-2.5 ~-2.5 ~-2.5 as @e[dx=4,dy=4,dz=4,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute if score @s light_green.boss.animation matches 10 as @e[tag=light_green.target] run damage @s 5 mob_attack by @n[tag=light_green.boss.big_hoglin]
execute if score @s light_green.boss.animation matches 10 as @e[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 10 run tag @s remove light_green.attacker


execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:big_hoglin_attack
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/big_hoglin/move/detect_attack