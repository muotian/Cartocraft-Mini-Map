tag @s add wool_purple.holding_eye_of_truesight
tag @s add wool_purple.has_custom_weapon
tag @s add wool_purple.has_no_offhand
execute unless score @s wool_purple.ability_cd matches 0..600 run scoreboard players set @s wool_purple.ability_cd 0
