#> assist:gateway/menu/open

execute if score @s assist.gateway.id matches 0 if score $shift_notice assist.gateway matches 1 run function assist:gateway/core/shift_notice.remove

scoreboard players set @s assist.gateway.active 2
scoreboard players set @s assist.gateway.timer 23
data merge entity @s {response:0b}

playsound minecraft:ui.button.click block @a ~ ~0.5 ~ 1 1

function assist:gateway/menu/layout
data remove block ~ ~ ~ exit_portal
