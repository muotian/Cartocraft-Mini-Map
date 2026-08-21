
scoreboard players add @s white.move.flute.duration 1

execute if score @s white.move.flute.duration matches 1 run function white:move/flute/2
execute if score @s white.move.flute.duration matches 3 run function white:move/flute/2
execute if score @s white.move.flute.duration matches 5 run function white:move/flute/2
execute if score @s white.move.flute.duration matches 7 run function white:move/flute/2
execute if score @s white.move.flute.duration matches 9 run function white:move/flute/2
execute if score @s white.move.flute.duration matches 10.. run function white:move/flute/clear

# fx
execute if score @s white.move.flute.duration matches 1 run function white:move/flute/sheet/1
execute if score @s white.move.flute.duration matches 3 run function white:move/flute/sheet/2
execute if score @s white.move.flute.duration matches 5 run function white:move/flute/sheet/3
execute if score @s white.move.flute.duration matches 7 run function white:move/flute/sheet/4
execute if score @s white.move.flute.duration matches 9 run function white:move/flute/sheet/5