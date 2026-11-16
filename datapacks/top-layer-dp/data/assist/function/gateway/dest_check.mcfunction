#> assist:gateway/dest_check

execute as @a[scores={assist.gateway.dest_id=0..}] at @s if function assist:gateway/player/dest_check run scoreboard players reset @s assist.gateway.dest_id
execute if entity @a[scores={assist.gateway.dest_id=0..}] run schedule function assist:gateway/dest_check 1t
