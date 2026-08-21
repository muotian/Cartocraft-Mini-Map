scoreboard players add @s light_green.main.math 1
execute store result score $Onground light_green.main.math run data get entity @s OnGround
execute at @s run particle dust{color:5249552,scale:3} ~ ~ ~ 0.0 0.0 0.0 0 0 normal
execute if score @s light_green.main.math matches 2.. run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/hit
execute if score $Onground light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/drop