#> assist:gateway/menu/open

scoreboard players set @s assist.gateway.active 2
scoreboard players set @s assist.gateway.timer 23
data merge entity @s {response:0b}

playsound minecraft:ui.button.click block @a ~ ~0.5 ~ 1 1

function assist:gateway/menu/layout
data remove block ~ ~ ~ exit_portal
