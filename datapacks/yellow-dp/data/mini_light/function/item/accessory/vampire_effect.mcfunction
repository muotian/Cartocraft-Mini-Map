playsound minecraft:entity.phantom.bite master @a[distance=..10] ~ ~ ~ 10 .7
playsound minecraft:entity.witch.drink master @a[distance=..5] ~ ~ ~ 10 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^ ^1 ^1.7 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^.3 ^1.5 ^1.2 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^-.3 ^1.5 ^1.2 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^-.6 ^1.5 ^.7 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^.6 ^1.5 ^.7 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^.7 ^1.5 ^.2 .1 .1 .1 0 1
particle minecraft:dust{color:[1.000,0.000,0.000],scale:1} ^-.7 ^1.5 ^.2 .1 .1 .1 0 1
particle minecraft:heart ~ ~2 ~ .2 .2 .2 0 10
execute anchored eyes run particle minecraft:dust{color:[1.000,0.000,0.000],scale:0.5} ^ ^ ^.3 .3 .3 .3 1 25
execute anchored eyes run particle minecraft:dust{color:[0.6,0.000,0.000],scale:0.5} ^ ^ ^.3 .3 .3 .3 1 25

effect give @s speed 1 2 true
effect give @s minecraft:instant_health

scoreboard players set @s mini_light.vampire_bracelet_cd 200