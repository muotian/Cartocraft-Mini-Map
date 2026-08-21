execute if score @s light_green.boss.animation matches 2..15 run tp @s ~ ~-0.4 ~
execute if score @s light_green.boss.animation matches 14 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 4 0
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:entity.iron_golem.repair hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.attack_type 4
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.animation 1