execute as @n[tag=wool_purple.target] at @s unless score @s wool_purple.use_shield matches 1.. run effect give @s wither 10 1 false
execute as @n[tag=wool_purple.target] at @s unless score @s wool_purple.use_shield matches 1.. run scoreboard players reset @s wool_purple.use_shield
summon tnt ~ ~ ~ {fuse:0,explosion_power:0}
tp @s ~ ~-300 ~
kill @s