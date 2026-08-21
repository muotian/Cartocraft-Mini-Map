
function white:move/temptation/blackhole/use

tag @s add white.self
data modify storage white:temp dmg set value {value:"4 white:move/temptation",func:"white:move/temptation/frisbee/victim"}
function white:sys/dmg/atker
tag @s remove white.self

# fx
playsound white:temptation master @a ~ ~ ~ 5 1
playsound minecraft:item.trident.hit master @a ~ ~ ~ 5 1