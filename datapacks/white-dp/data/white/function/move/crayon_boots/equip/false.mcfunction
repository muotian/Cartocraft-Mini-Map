
tag @s remove white.move.crayon_boots

scoreboard players operation #self white.main = @s white.player.id
execute as @e[tag=white.move.crayon_boots.crayon,type=block_display,predicate=white:player/is_owner] at @s run function white:move/crayon_boots/crayon/clear