execute store result score $pc light_green.main.math run execute if entity @e[tag=light_green.boss.challenger]
scoreboard players remove $pc light_green.main.math 1

scoreboard players set $piglin_girl.health.base light_green.main.math 300
scoreboard players set $piglin_girl.modify.base light_green.main.math 90
scoreboard players set $piglin_girl.multipie.base light_green.main.math 90

execute store result bossbar light_green:piglin_girl max run scoreboard players get @n[tag=light_green.new.mob] light_green.custom.health
execute if score $pc light_green.main.math matches 1.. run function light_green:mob/boss/piglin_girl/start_health/1