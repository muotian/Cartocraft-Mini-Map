
tp @s ~ ~ ~

## damage
tag @e[tag=white.move.sovereign_blade.target,tag=!white.victim,limit=1] add white.victim
data modify storage white:temp dmg set value {value:"1024 out_of_world"}
function white:sys/dmg/atker

## motion
execute as @a[predicate=white:player,distance=..3] facing entity @s feet rotated ~ -30 run function white:sys/motion {s:1}

# fx
execute positioned ~ ~-0.75 ~ run function white:move/sovereign_blade/blade/2fx