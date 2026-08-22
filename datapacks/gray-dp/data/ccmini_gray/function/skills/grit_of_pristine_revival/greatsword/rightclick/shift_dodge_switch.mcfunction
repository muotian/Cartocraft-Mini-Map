scoreboard players set @s gray.gopr.dodge.cd 20
execute if entity @s[tag=!gray.gopr.shift_dodge] run return run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/shift_dodge_open
tellraw @s {translate:"gray.message.shift_dodge_close"}
tag @s remove gray.gopr.shift_dodge