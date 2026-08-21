execute as @e[tag=light_green.boss.graud_golem_leg,sort=random,limit=1] run tag @s add light_green.boss.graud_golem_leg.broken
scoreboard players set @n[tag=light_green.boss.graud_golem_leg.broken] light_green.team 1
scoreboard players set @n[tag=light_green.boss.graud_golem_leg.broken] light_green.boss.attack_type 1
execute as @n[tag=light_green.boss.graud_golem_leg.broken] run data modify entity @s Invulnerable set value false
scoreboard players set @n[tag=light_green.boss.graud_golem_leg.broken] light_green.custom.health 50
execute store result storage light_green:boss leg int 1 run scoreboard players get @n[tag=light_green.boss.graud_golem_leg.broken] light_green.mob.ai
playsound entity.zombie.attack_iron_door hostile @a ~ ~ ~ 5 1
scoreboard players add @s light_green.main.math 1
function light_green:mob/boss/graud_golem/leg/hurt_deafault with storage light_green:boss