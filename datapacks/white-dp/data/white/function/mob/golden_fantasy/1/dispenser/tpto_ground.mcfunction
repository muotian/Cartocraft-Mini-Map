
scoreboard players add #limit white.main 1
execute if score #limit white.main matches 5.. run kill @s

# up
execute unless block ~ ~ ~ #white:transparent positioned ~ ~1 ~ run return run function white:mob/golden_fantasy/1/dispenser/tpto_ground

# down
execute if block ~ ~-1 ~ #white:transparent positioned ~ ~-1 ~ run return run function white:mob/golden_fantasy/1/dispenser/tpto_ground

# final
tp ~ ~ ~