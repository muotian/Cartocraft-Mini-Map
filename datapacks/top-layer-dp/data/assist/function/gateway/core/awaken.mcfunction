#> assist:gateway/core/awaken

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id

execute as @e[type=minecraft:item_display,distance=0..5,tag=assist.gateway.label] if score @s assist.gateway.id = $this assist.gateway.id run data merge entity @s {Glowing:1b}
