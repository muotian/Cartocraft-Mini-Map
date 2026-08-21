tag @s add light_green.attacker
execute at @s positioned ~-2.5 ~-2.5 ~-2.5 as @e[dx=4,dy=4,dz=4,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.target
execute as @e[tag=light_green.target] run damage @s 5 mob_attack by @n[tag=light_green.boss.big_hoglin]
execute as @e[tag=light_green.target] run tag @s remove light_green.target
tag @s add light_green.attacker
function light_green:mob/boss/big_hoglin/rush_summon/mud/summon
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 2 0