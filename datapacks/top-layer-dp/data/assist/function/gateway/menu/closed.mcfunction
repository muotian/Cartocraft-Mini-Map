#> assist:gateway/menu/closed

scoreboard players set @s assist.gateway.active 1
data modify block ~ ~ ~ exit_portal set from entity @s data.dest
scoreboard players reset @s assist.gateway.looked_at

execute as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run kill @s
