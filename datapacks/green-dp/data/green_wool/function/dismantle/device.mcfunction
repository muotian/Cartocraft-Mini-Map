execute store result score @s green_wool.mob.health run data get entity @s Health
execute if entity @s[scores={green_wool.mob.health=..200},tag=!green_wool.broken] run function green_wool:dismantle/device_stop
execute if entity @s[scores={green_wool.mob.health=..200},tag=green_wool.broken] at @s run function green_wool:dismantle/device_broken