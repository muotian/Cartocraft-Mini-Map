execute if entity @e[type=marker,tag=mini_light.gem_pickaxe.marker, distance=..0.49] run return run scoreboard players set @e[type=marker,tag=mini_light.gem_pickaxe.marker, distance=..0.49] mini_light.duration 200
summon marker ~ ~ ~ {Tags:["mini_light.gem_pickaxe.marker", "new"]}
scoreboard players set @e[tag=mini_light.gem_pickaxe.marker, tag=new, type=marker] mini_light.duration 200
tag @e[tag=new] remove new
