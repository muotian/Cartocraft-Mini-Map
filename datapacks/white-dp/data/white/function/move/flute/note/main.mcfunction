
scoreboard players add @s white.duration 1

tp @s ^ ^ ^1

execute if function white:move/flute/note/hitbox run function white:move/flute/note/hit

execute unless block ^ ^ ^1 #white:transparent run function white:move/flute/note/clear
execute if score @s white.duration matches 80.. run function white:move/flute/note/clear

# fx
particle note ~ ~ ~ 0 0 0 1 1 normal