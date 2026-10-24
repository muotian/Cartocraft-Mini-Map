#> assist:booster/expire
# @s = player

attribute @s minecraft:movement_speed modifier remove assist:booster
playsound minecraft:entity.breeze.slide player @a ~ ~ ~ 2
scoreboard players reset @s assist.booster.due_time
