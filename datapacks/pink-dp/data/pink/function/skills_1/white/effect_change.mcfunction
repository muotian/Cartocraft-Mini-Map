#
data modify storage pink:effect id set from storage pink:effect _[0].id

data modify storage pink:effect show_icon set from storage pink:effect _[0].show_icon
execute if data storage pink:effect {show_icon:0b} run data modify storage pink:effect show_icon set value "true"
execute if data storage pink:effect {show_icon:1b} run data modify storage pink:effect show_icon set value "false"

data modify storage pink:effect amplifier set value 0
data modify storage pink:effect amplifier set from storage pink:effect _[0].amplifier

execute store result score $effect pink.white.effect run data get storage pink:effect _[0].duration
execute unless data storage pink:effect {duration:-1} run scoreboard players operation $effect pink.white.effect /= $/20 pink.white.effect
execute unless data storage pink:effect {duration:-1} run scoreboard players operation $effect pink.white.effect += $8s pink.white.effect
execute unless data storage pink:effect {duration:-1} store result storage pink:effect duration int 1 run scoreboard players get $effect pink.white.effect

data remove storage pink:effect _[0]

function pink:skills_1/white/effect_back with storage pink:effect {}

execute if data storage pink:effect _[0] run function pink:skills_1/white/effect_change

