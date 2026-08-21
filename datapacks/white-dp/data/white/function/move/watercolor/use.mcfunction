
execute if score @s white.move.watercolor.cd matches 1.. run return fail

tag @s add white.move.watercolor
scoreboard players reset @s white.move.watercolor.duration
scoreboard players set @s white.move.watercolor.cd 100

# fx
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 0
playsound minecraft:item.brush.brushing.gravel master @a ~ ~ ~ 1 1.5
playsound minecraft:item.brush.brushing.gravel master @a ~ ~ ~ 1 1.5