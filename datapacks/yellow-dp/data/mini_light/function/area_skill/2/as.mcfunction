execute unless entity @a[distance=..25] run kill @s
execute unless block ^ ^ ^.5 #air run kill @s

execute positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=#mini_light:monster] run function mini_light:area_skill/2/hit

execute if entity @a[distance=..25] positioned ~-.5 ~-.5 ~-.5 unless entity @e[dx=0,dy=0,dz=0,type=#mini_light:monster] positioned ~.5 ~.5 ~.5 positioned ^ ^ ^1 run function mini_light:area_skill/2/as