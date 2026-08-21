# 執行者、執行位置是那團霧
tp @s ^ ^ ^1
particle dust{color:[0.23,0.8,0.0],scale:1} ~ ~ ~ .1 .1 .1 0 15 force
particle dust{color:[0.0,1.0,0.0],scale:1} ^ ^0.5 ^ 0 0 0 0 1 force
particle dust{color:[0.0,1.0,0.0],scale:1} ^ ^-0.5 ^ 0 0 0 0 1 force
particle dust{color:[0.0,1.0,0.0],scale:1} ^0.5 ^ ^ 0 0 0 0 1 force
particle dust{color:[0.0,1.0,0.0],scale:1} ^-0.5 ^ ^ 0 0 0 0 1 force


particle entity_effect{color:[0.020,0.302,0.000,1.00]} ~ ~ ~ 0 0 0 1 3 force



execute unless entity @a[distance=..20] run kill @s
execute unless block ^ ^ ^.5 #air run kill @s

#hit
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=#mini_light:monster] run function mini_light:area_skill/1/hit


