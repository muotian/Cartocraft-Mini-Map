tag @s add wool_purple.holding_aspectslayer
tag @s add wool_purple.has_custom_weapon
execute unless score @s wool_purple.carpet_cd matches 0..600 run scoreboard players set @s wool_purple.carpet_cd 0
execute unless score @s wool_purple.switch.sword matches -1..1 run scoreboard players set @s wool_purple.switch.sword 1
