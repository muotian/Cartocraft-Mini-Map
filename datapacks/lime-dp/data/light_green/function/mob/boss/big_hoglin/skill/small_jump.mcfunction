execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/small_jump/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
kill @e[tag=light_green.boss.big_hoglin.target]
execute on target run tag @s add light_green.target
execute at @s facing entity @n[tag=light_green.target] feet positioned ^ ^ ^40 run summon marker ~ ~ ~ {Tags:["light_green.boss.big_hoglin.target"]}
tag @n[tag=light_green.target] remove light_green.target
scoreboard players set @s light_green.boss.animation 26
scoreboard players set @s light_green.boss.attack_type 4
attribute @s movement_speed modifier add light_green:big_hoglin_attack -100 add_value