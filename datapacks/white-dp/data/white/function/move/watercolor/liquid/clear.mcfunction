
function white:move/watercolor/liquid/fx/hit
playsound minecraft:entity.tropical_fish.flop master @a ~ ~ ~ 1 1

scoreboard players reset @s white.duration
scoreboard players reset @s white.move.watercolor.color
kill @s
