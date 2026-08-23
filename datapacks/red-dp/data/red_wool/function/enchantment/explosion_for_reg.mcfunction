advancement revoke @s only red_wool:armors/explosion_for_reg

execute unless predicate red_wool:armors/explosion_for_reg run return fail

execute if score @s red_wool.explosion_for_reg matches 1.. run return fail
effect give @s absorption 300 2
scoreboard players set @s red_wool.explosion_for_reg 300