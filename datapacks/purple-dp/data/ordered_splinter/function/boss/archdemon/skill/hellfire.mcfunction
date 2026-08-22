execute unless score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/hellfire/play
execute if score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/hellfire_run/play
scoreboard players set @s wool_purple.boss_animation 46
scoreboard players set @s wool_purple.boss_type 7
execute as a11-0-0-0-1 at @s run rotate @s facing entity @e[tag=wool_purple.target,limit=1]
tag @s remove wool_purple.ready_to_fire