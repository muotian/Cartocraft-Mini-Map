execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/attack1/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
scoreboard players set @s light_green.main.math 0
scoreboard players set @s light_green.boss.animation 26
scoreboard players set @s light_green.boss.attack_type 3
attribute @s movement_speed modifier add light_green:big_hoglin_attack -100 add_value