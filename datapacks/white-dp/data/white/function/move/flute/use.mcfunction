
execute if score @s white.move.flute.cd matches 1.. run return fail

tag @s add white.move.flute
scoreboard players reset @s white.move.flute.duration
scoreboard players set @s white.move.flute.cd 100