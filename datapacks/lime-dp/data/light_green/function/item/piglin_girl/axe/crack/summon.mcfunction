summon marker ~ ~ ~ {Tags:["light_green","light_green.boss","light_green.mob","light_green.crack","light_green.new.mob","light_green","light_green.from_player"]}
scoreboard players set @n[tag=light_green.new.mob,type=marker] light_green.mob.ai 2

execute store result score @n[tag=light_green.new.mob,type=marker] light_green.crack_id run scoreboard players add $crack_id light_green.main.math 1
execute store result score @n[tag=light_green.new.mob,type=marker] light_green.player_id run scoreboard players get @s light_green.player_id

execute as @n[tag=light_green.new.mob,type=marker] run function light_green:mob/boss/piglin_girl/crack/binding/

$execute as @n[tag=light_green.new.mob,type=marker] at @s run spreadplayers ~ ~ 0 1 under $(y) false @s

execute store result storage light_green:smoke score int 2 run scoreboard players add @n[tag=light_green.new.mob] light_green.mob.ai 3
execute as @n[tag=light_green.new.mob,type=marker] at @s run function light_green:mob/boss/piglin_girl/crack/model
tag @n[tag=light_green.new.mob,type=marker] remove light_green.new.mob