
scoreboard players operation #self white.main = @s white.player.id
tag @e[tag=white.move.crayon_boots.crayon,type=block_display,predicate=white:player/is_owner] add white.move.crayon_boots.crayon.self

execute as @e[tag=white.move.crayon_boots.crayon.self,type=block_display] if score @s white.duration <= @e[tag=white.move.target,type=block_display,limit=1] white.duration run tag @s add white.move.target2
execute as @e[tag=white.move.target2,type=block_display] at @s run function white:move/crayon_boots/is_enclose/3

tag @s add white.victim
execute as @e[tag=white.move.crayon_boots.crayon.self,type=block_display,limit=1] at @s run function white:move/crayon_boots/realm/use
tag @s remove white.victim

# reset
execute as @e[tag=white.move.crayon_boots.crayon.self,type=block_display] at @s run function white:move/crayon_boots/crayon/clear