tag @s add wool_purple.holding_pyrowind
tag @s add wool_purple.has_custom_weapon
tag @s add wool_purple.has_no_offhand
execute unless score @s wool_purple.tornado_cd matches 0..800 run scoreboard players set @s wool_purple.tornado_cd 0
