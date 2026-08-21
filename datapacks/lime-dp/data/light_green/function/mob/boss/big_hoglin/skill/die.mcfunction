execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/hoglin_die/play
function light_green:mob/boss/big_hoglin/skill/clear_attribute
kill @e[tag=light_green.boss.big_hoglin.target]
execute at @s rotated ~ 0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["light_green.boss.big_hoglin.target"]}
scoreboard players set @s light_green.main.math 0
scoreboard players set @s light_green.boss.animation 176
scoreboard players set @s light_green.boss.attack_type 5
scoreboard players set @s light_green.mob.ai 1
scoreboard players set @s light_green.custom.health 1250
scoreboard players reset @s light_green.move_step
data modify entity @s Invulnerable set value 1b
attribute @s movement_speed modifier add light_green:big_hoglin_die -100 add_value
data modify entity @s NoAI set value 1b
scoreboard players reset $hoglin_rush light_green.main.math