#> assist:gateway/menu/close

scoreboard players set @s assist.gateway.active 4
scoreboard players set @s assist.gateway.timer 23
data merge entity @s {response:0b}

execute if entity @a[tag=assist.gateway.pressor] run playsound minecraft:ui.button.click block @a ~ ~0.5 ~ 1 1

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
execute as @e[type=minecraft:interaction,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run kill @s
