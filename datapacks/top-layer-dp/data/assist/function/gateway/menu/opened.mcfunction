#> assist:gateway/menu/opened

scoreboard players set @s assist.gateway.active 3
scoreboard players reset @s assist.gateway.looked_at

execute as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run function assist:gateway/menu/pedestle.button
