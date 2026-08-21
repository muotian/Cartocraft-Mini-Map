execute unless entity @p[distance=..28.75] at @n[tag=light_green.summon.graud_golem] run schedule function light_green:mob/boss/graud_golem/summon_late 1s
execute unless entity @p[distance=..28.75] at @n[tag=light_green.summon.graud_golem] run function light_green:mob/boss/graud_golem/pillar_clear
execute unless entity @p[distance=..28.75] at @n[tag=light_green.summon.graud_golem] run return run function light_green:mob/boss/graud_golem/kill
scoreboard players add @s light_green.boss.music 1
execute if score @s light_green.boss.music matches 3613 run scoreboard players set @s light_green.boss.music 225

execute unless score @s light_green.main.math matches 399.. run scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 399 run function light_green:mob/boss/graud_golem/leg/damage/0
execute if score @s light_green.main.math matches 401..798 run scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 799 run function light_green:mob/boss/graud_golem/leg/damage/0
execute if score @s light_green.main.math matches 801..1198 run scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 1199 run function light_green:mob/boss/graud_golem/leg/damage/0
execute if score @s light_green.main.math matches 1201..1598 run scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 1599 run function light_green:mob/boss/graud_golem/leg/damage/0

execute store result score @s light_green.mob.health run data get entity @s Health
execute unless score @s light_green.mob.health = @s light_green.mob.health_late run function light_green:mob/boss/graud_golem/health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health