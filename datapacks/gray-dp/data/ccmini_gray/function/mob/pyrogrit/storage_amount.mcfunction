data modify entity @s last_hurt_by_player_memory_time set value 0
execute unless score @s gray.pyrogrit.amount matches 5.. run scoreboard players add @s gray.pyrogrit.amount 1