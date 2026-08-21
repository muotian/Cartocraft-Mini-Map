
scoreboard players add @s white.duration 1

## clear
execute if predicate white:flags/is_on_ground run return run function white:move/watercolor/liquid/clear
execute if score @s white.duration matches 100.. run return run function white:move/watercolor/liquid/clear

## movement
function white:sys/bullet/last_pos/first

execute if function white:move/watercolor/liquid/hitbox run function white:move/watercolor/liquid/hit
execute at @e[tag=white.bullet.last_pos,type=marker,limit=1] facing entity @s feet run function white:move/watercolor/liquid/fx/path

function white:sys/bullet/last_pos/last
