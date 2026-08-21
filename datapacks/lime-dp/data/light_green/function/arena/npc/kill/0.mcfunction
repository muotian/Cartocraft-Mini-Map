execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.npc_id
execute at @s run function light_green:arena/npc/kill/1 with storage light_green:mob
kill @s