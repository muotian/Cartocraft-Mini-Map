function ordered_splinter:particle/tornado

tag @s add wool_purple.bullet
execute unless block ~ ~ ~ #ordered_splinter:transparent run scoreboard players add @s wool_purple.pyro_wind_timer 8
execute if block ~ ~ ~ #ordered_splinter:break run setblock ~ ~ ~ air destroy

scoreboard players add @s wool_purple.pyro_wind_timer 1
execute if score @s wool_purple.pyro_wind_timer matches 48.. run kill @s

execute if score @s wool_purple.pyro_wind_timer matches ..8 run tp @s ^ ^ ^1 ~45 ~-1
execute if score @s wool_purple.pyro_wind_timer matches 9..18 run tp @s ^ ^ ^1 ~36 ~-1
execute if score @s wool_purple.pyro_wind_timer matches 19..34 run tp @s ^ ^ ^1 ~22.5 ~
execute if score @s wool_purple.pyro_wind_timer matches 35.. run tp @s ^ ^ ^1 ~18 ~

execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,nbt={DeathTime:0s},type=#mobs,nbt=!{Invulnerable:1b}] run function ordered_splinter:sword/pyrowind_longsword/damage

tag @s remove wool_purple.bullet