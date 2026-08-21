
scoreboard players remove @s light_green.custom.health 1
execute if score @s light_green.boss.attack_type matches 7 run return run function light_green:mob/boss/big_hoglin/animation/convert
execute if score @s light_green.custom.health matches ..0 run return run function light_green:mob/boss/big_hoglin/skill/die2

scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 200.. as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/die_roar/play

execute if score @s light_green.main.math matches 200.. run playsound minecraft:entity.hoglin.converted_to_zombified hostile @a ~ ~ ~ 3 0.25
execute if score @s light_green.main.math matches 200.. run scoreboard players reset @s light_green.main.math

execute if score @s light_green.mob.ai matches 2.. run scoreboard players remove @s light_green.mob.ai 1

function light_green:random {math1:-30.0,math2:30.0}


execute if entity @n[tag=light_green.target] unless score @s light_green.boss.attack_type matches 1.. if score @s light_green.mob.ai matches 1 unless score $hoglin_rush light_green.main.math matches 6.. at @s run function light_green:mob/boss/big_hoglin/skill/die_rush_first with storage light_green:random
execute if entity @n[tag=light_green.target] unless score @s light_green.boss.attack_type matches 1.. if score @s light_green.mob.ai matches 1 if score $hoglin_rush light_green.main.math matches 6.. run function light_green:mob/boss/big_hoglin/skill/die_rush


tag @n[tag=light_green.target] remove light_green.target

execute unless score @s light_green.move_step matches 1.. unless score @s light_green.boss.attack_type matches 1.. run return fail
execute if score @s light_green.boss.attack_type matches 1.. store result storage light_green:boss damage float 0.1 run scoreboard players set $damage light_green.main.math 5
function light_green:mob/boss/big_hoglin/animation/convert