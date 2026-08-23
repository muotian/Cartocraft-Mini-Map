#体力恢复
#scoreboard players add @a[scores={green_wool.gladius_energy_bar=..999}] green_wool.gladius_energy_bar 1
#体力条显示/不显示
#execute as @a if predicate green_wool:green_gladius run bossbar set gladius_energy_bar players @s
#execute as @a unless predicate green_wool:green_gladius run bossbar set gladius_energy_bar players
#计分板链接bossbar
#execute as @a if predicate green_wool:green_gladius run execute store result score @s green_wool.gladius_energy_bar run execute store result bossbar gladius_energy_bar value run scoreboard players get @s green_wool.gladius_energy_bar

#scoreboard players remove @a[scores={green_wool.crafting_bugfix=1..}] green_wool.crafting_bugfix 1


