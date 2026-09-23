execute store result score $pc light_green.main.math run execute if entity @e[tag=light_green.boss.challenger]
scoreboard players remove $pc light_green.main.math 1

scoreboard players set $big_hoglin.health.base light_green.main.math 100
scoreboard players set $big_hoglin.modify.base light_green.main.math 90
scoreboard players set $big_hoglin.multipie.base light_green.main.math 90

function light_green:mob/boss/big_hoglin/start_health/skin/0
execute if score $pc light_green.main.math matches 1.. run function light_green:mob/boss/big_hoglin/start_health/1