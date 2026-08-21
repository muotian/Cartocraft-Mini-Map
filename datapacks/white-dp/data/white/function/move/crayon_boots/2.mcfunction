
execute positioned ~0.5 ~ ~0.5 run function white:move/crayon_boots/crayon/use

scoreboard players operation #self white.main = @s white.player.id
execute as @e[tag=white.move.crayon_boots.crayon,type=block_display,predicate=white:player/is_owner,distance=..64] at @s run function white:move/crayon_boots/crayon/main
execute align xyz positioned ~ -64 ~ run function white:move/crayon_boots/is_enclose/use
