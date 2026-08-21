
scoreboard players add @s white.move.watercolor.duration 1

execute if score @s white.move.watercolor.duration matches 1 anchored eyes positioned ^ ^ ^ run function white:move/watercolor/1
execute if score @s white.move.watercolor.duration matches 2 anchored eyes positioned ^ ^ ^ run function white:move/watercolor/2
execute if score @s white.move.watercolor.duration matches 3 anchored eyes positioned ^ ^ ^ run function white:move/watercolor/3
execute if score @s white.move.watercolor.duration matches 4 anchored eyes positioned ^ ^ ^ run function white:move/watercolor/4
execute if score @s white.move.watercolor.duration matches 5 anchored eyes positioned ^ ^ ^ run function white:move/watercolor/5
execute if score @s white.move.watercolor.duration matches 6.. run function white:move/watercolor/clear