
execute store result score #fx_circle white.main run scoreboard players add @s white.move.sovereign_blade.duration 1
execute store result storage white:temp index int 1 run scoreboard players operation #fx_circle white.main %= #20 white.main

function white:move/sovereign_blade/blade/fx_circle/interpret with storage white:temp

data remove storage white:temp index
