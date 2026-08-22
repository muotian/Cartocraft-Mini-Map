# 執行者、執行位置是地毯

scoreboard players add @s wool_purple.kill_carpet 1
execute if score @s wool_purple.kill_carpet matches 100 run kill @s

function ordered_splinter:particle/carpet
execute rotated as @s if block ^ ^-0.1 ^ #ordered_splinter:transparent run tp @s ^ ^-0.2 ^

execute as @e[type=minecraft:marker,tag=wool_purple.carpet_damage] at @s if entity @e[type=#mobs,dx=0.5] run function ordered_splinter:sword/aspectslayer_longsword/carpet_damage
execute as @e[type=minecraft:marker,tag=wool_purple.carpet_damage] at @s if entity @e[type=player,dx=0.5] run function ordered_splinter:sword/aspectslayer_longsword/carpet_damage