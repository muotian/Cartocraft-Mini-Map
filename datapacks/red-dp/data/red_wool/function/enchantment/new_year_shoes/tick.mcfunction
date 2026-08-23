scoreboard players set @s red_wool.new_year_shoes 0
execute as @e[distance = ..20, nbt = {HurtTime:9s}] on attacker run scoreboard players add @s[type = player] red_wool.new_year_shoes 1
execute as @e[distance = ..20, nbt = {HurtTime:10s}] on attacker run scoreboard players add @s[type = player] red_wool.new_year_shoes 1
scoreboard players operation @s red_wool.new_year_shoes += @s red_wool.new_year_shoes1
scoreboard players set @s red_wool.new_year_shoes1 0

execute if score @s red_wool.new_year_shoes matches 3.. run effect give @s strength 10 3
execute if score @s red_wool.new_year_shoes matches 3.. run playsound entity.lightning_bolt.impact block @s ~ ~ ~ 1.0 1.0 1.0