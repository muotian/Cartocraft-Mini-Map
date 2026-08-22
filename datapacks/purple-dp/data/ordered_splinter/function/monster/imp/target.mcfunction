tp @s ~ ~ ~ ~ ~
scoreboard players set @s wool_purple.mob.exist 1
execute if score #imp_hurt wool_purple.mob.id matches 1.. run damage @s 0.0000001 out_of_world
execute if score #imp_hurt wool_purple.mob.id matches 1.. run tag @s add wool_purple.imp_hurt

execute as @s[tag=wool_purple.imp_hurt] run scoreboard players add @s wool_purple.red 1
execute as @s[tag=wool_purple.imp_hurt] run function ordered_splinter:monster/imp/hurt
execute as @s[tag=wool_purple.imp_hurt] if score @s wool_purple.red matches 7 run scoreboard players set @s wool_purple.red 0
execute as @s[tag=wool_purple.imp_hurt] if score @s wool_purple.red matches 0 run function ordered_splinter:monster/imp/no_hurt