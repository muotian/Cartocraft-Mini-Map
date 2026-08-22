tp @s ~ ~ ~ ~ ~
scoreboard players set @s wool_purple.mob.exist 1
execute if score #murderer_hurt wool_purple.mob.id matches 1.. run damage @s 0.0000001 out_of_world