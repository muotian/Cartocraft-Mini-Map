
tag @s add white.move.temptation.blackhole.self

tag @e[type=#white:hostile,distance=..5] add white.victim
data modify storage white:temp dmg set value {value:"8 white:move/temptation",func:"white:move/temptation/blackhole/victim"}
function white:sys/dmg/atker

kill @s

# fx
particle instant_effect{color:[0.651,0.451,1.000],power:1.5} ~ ~ ~ 0 0 0 0.1 50 force
particle instant_effect{color:[0.412,0.627,1.000],power:1.5} ~ ~ ~ 0 0 0 0.1 50 force
particle flash{color:[0.075,0.031,0.251,1.00]} ~ ~ ~ 0 0 0 0 0 force
particle flash{color:[0.075,0.031,0.251,1.00]} ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.5