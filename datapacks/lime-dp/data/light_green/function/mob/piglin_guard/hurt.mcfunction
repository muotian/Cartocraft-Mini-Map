execute unless entity @s[tag=light_green.hurt_projectile_2] run tag @s remove light_green.hurt_projectile
tag @s remove light_green.hurt_projectile_2
scoreboard players add @s light_green.hurt_count 1
execute if score @s light_green.hurt_count matches 2 run function light_green:mob/piglin_guard/change/convert