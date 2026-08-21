execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.trader_id
execute at @s run function light_green:piglin_trader/kill/1 with storage light_green:mob
kill @s