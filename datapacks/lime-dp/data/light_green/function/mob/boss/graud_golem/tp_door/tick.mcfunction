particle portal ~ ~ ~ 1 1 1 0 50

execute at @s as @a[distance=..1.5] run title @s times 0t 3t 0t
execute at @s as @a[distance=..1.5] run title @s title ""
execute at @s as @a[distance=..1.5] run title @s subtitle [{keybind:"key.sneak"},{text:" - "},{translate:"light_green:tp_door"}]

execute if entity @s[tag=light_green.tp_door_up] run particle portal ~ ~ ~ 0 1 0 5 0
execute if entity @s[tag=light_green.tp_door_up] at @s as @a[distance=..1.5] unless score @s light_green.tp_door_cd matches 1.. if predicate light_green:shift run tag @s add light_green.tp_door_up_player
execute if entity @s[tag=light_green.tp_door_up] at @s as @a[distance=..1.5,tag=light_green.tp_door_up_player] run tp @s ~ ~23 ~
execute if entity @s[tag=light_green.tp_door_up] at @s positioned ~ ~22 ~ as @a[distance=..1.5,tag=light_green.tp_door_up_player] run playsound entity.player.teleport player @s ~ ~ ~ 1 1
execute if entity @s[tag=light_green.tp_door_up] at @s positioned ~ ~22 ~ as @a[distance=..1.5,tag=light_green.tp_door_up_player] run scoreboard players set @s light_green.tp_door_cd 10
execute if entity @s[tag=light_green.tp_door_up] at @s positioned ~ ~22 ~ as @a[distance=..1.5,tag=light_green.tp_door_up_player] run tag @s remove light_green.tp_door_up_player

execute if entity @s[tag=light_green.tp_door_up] run return fail

execute if entity @s[tag=light_green.tp_door_down] run particle portal ~ ~ ~ 0 -1 0 5 0
execute if entity @s[tag=light_green.tp_door_down] at @s as @a[distance=..1.5] unless score @s light_green.tp_door_cd matches 1.. if predicate light_green:shift run tag @s add light_green.tp_door_down_player
execute if entity @s[tag=light_green.tp_door_down] at @s as @a[distance=..1.5,tag=light_green.tp_door_down_player] run tp @s ~ ~-22 ~
execute if entity @s[tag=light_green.tp_door_down] at @s positioned ~ ~-22 ~ as @a[distance=..1.5,tag=light_green.tp_door_down_player] run playsound entity.player.teleport player @s ~ ~ ~ 1 1
execute if entity @s[tag=light_green.tp_door_down] at @s positioned ~ ~-22 ~ as @a[distance=..1.5,tag=light_green.tp_door_down_player] run scoreboard players set @s light_green.tp_door_cd 10
execute if entity @s[tag=light_green.tp_door_down] at @s positioned ~ ~-22 ~ as @a[distance=..1.5,tag=light_green.tp_door_down_player] run tag @s remove light_green.tp_door_down_player
