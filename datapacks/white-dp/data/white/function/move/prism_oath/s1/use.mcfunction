
execute unless score @s white.move.prism_oath.count matches 6.. run return run function white:move/prism_oath/no_oath

tag @s add white.move.prism_oath.s1
scoreboard players reset @s white.move.prism_oath.duration

effect give @s resistance 1 4 true
scoreboard players operation #self white.main = @s white.player.id
kill @e[tag=white.move.prism_oath.s1.square,predicate=white:player/is_owner,limit=2]
execute rotated ~90 ~ run function white:move/prism_oath/s1/square/use {id:1}
execute rotated ~-90 ~ run function white:move/prism_oath/s1/square/use {id:2}

scoreboard players remove @s white.move.prism_oath.count 6
function white:move/prism_oath/actionbar/use

# fx
playsound minecraft:item.spear.lunge_3 master @a ~ ~ ~ 5 0.75
playsound minecraft:item.trident.return master @a ~ ~ ~ 5 1.25
playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 5 0.75
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 5 1
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 5 1