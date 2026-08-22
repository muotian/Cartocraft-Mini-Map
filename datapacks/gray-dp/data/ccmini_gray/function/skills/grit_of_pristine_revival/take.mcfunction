#拿起時觸發一次
tag @s add gray.taking_gopr
execute unless score @s gray.gopr_mode matches 2.. at @s run return run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/take
execute if score @s gray.gopr_mode matches 2 at @s run return run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/take
