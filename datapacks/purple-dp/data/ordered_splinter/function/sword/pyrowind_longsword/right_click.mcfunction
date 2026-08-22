advancement revoke @s only ordered_splinter:pyrowind_longsword_right_click

execute if score @s wool_purple.tornado_cd matches 1..600 run title @s actionbar [{"translate":"item.pyrowind_longsword.lore.13","color":"white"},{"translate":"item.pyrowind_longsword.lore.14","color":"#E0E6FF"},{"translate":"item.pyrowind_longsword.lore.15","color":"#BDC9FF"},{"translate":"item.pyrowind_longsword.lore.16","color":"#FBBF31"},{"translate":"item.pyrowind_longsword.lore.17","color":"#FB8C00"},{"translate":"item.pyrowind_longsword.lore.18","color":"white"},{"translate":"ability_cd.1","color":"white"},{"score":{"name":"@s","objective":"wool_purple.tornado.sec"}},{"translate":"ability_cd.2","color":"white"}]
execute unless score @s wool_purple.tornado_cd matches 0 run return fail

execute as @s run scoreboard players set @s wool_purple.tornado_cd 800

function ordered_splinter:sword/pyrowind_longsword/summon
execute as @s run tag @e[type=#mobs,tag=!wool_purple.tornado,distance=..20,nbt=!{Invulnerable:1b}] add wool_purple.tornado_target