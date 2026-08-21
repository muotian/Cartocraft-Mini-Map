
tag @s add white.move.crayon_boots

scoreboard players operation #self white.main = @s white.player.id
execute as @e[tag=white.move.crayon_boots.crayon,type=block_display,predicate=white:player/is_owner] at @s run function white:move/crayon_boots/crayon/clear

# fx
playsound minecraft:entity.villager.work_cartographer master @a ~ ~ ~ 1 1