execute as @a if predicate green_wool:green_full_armour run effect give @s resistance 30 0
execute as @a[predicate=green_wool:green_full_armour,scores={green_wool.gladius_energy_bar=..995}] if predicate green_wool:is_sneaking run scoreboard players add @s green_wool.gladius_energy_bar 5
