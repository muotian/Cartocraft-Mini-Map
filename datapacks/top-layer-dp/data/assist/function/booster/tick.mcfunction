#> assist:booster/tick
# @s = marker(booster)

execute unless score @s assist.booster.id matches 1.. store result score @s assist.booster.id run scoreboard players add $total assist.booster 1
scoreboard players operation $id assist.booster = @s assist.booster.id

execute as @a[scores={assist.booster.id=1..}] if score @s assist.booster.id = $id assist.booster run tag @s add assist.booster.user

function assist:booster/sphere/animate

execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[dx=0,dy=0,dz=0,tag=!assist.booster.user] positioned ~-0.2 ~-0.2 ~-0.2 as @s[dx=0,dy=0,dz=0] at @s run function assist:booster/apply with storage assist:booster config

tag @a remove assist.booster.user
