
# player
execute store result score #count white.main if entity @e[type=#white:hostile,tag=white.victim,distance=..64]
execute as @e[tag=white.victim,type=player,distance=..64] at @s run function white:move/crayon_boots/realm/victim

# hostile
data modify storage white:temp dmg set value {value:"16 white:move/crayon_boots",func:"white:move/crayon_boots/realm/victim2"}
function white:sys/dmg/atker