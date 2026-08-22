scoreboard players add @s gray.distance 1
particle falling_dust{block_state:{Name:sand}} ~ ~ ~ 0.1 0.1 0.1 0 2



execute unless score @s gray.distance matches 16.. positioned ^ ^ ^0.5 unless function ccmini_gray:map/boss/after_battle/line_end run function ccmini_gray:map/boss/after_battle/power_line
scoreboard players reset @s gray.distance