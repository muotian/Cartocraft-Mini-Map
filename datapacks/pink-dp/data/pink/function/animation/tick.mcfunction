#
$scoreboard players set $_ pink.animation.tick $(tick)
scoreboard players add @s pink.animation.tick 1
scoreboard players operation $temp pink.animation.tick = @s pink.animation.tick
scoreboard players operation $temp pink.animation.tick %= $_ pink.animation.tick
execute unless score $temp pink.animation.tick matches 0 run return fail

#
scoreboard players add @s pink.animation.frame 1
execute store result storage pink:animation frame byte 1 run scoreboard players get @s pink.animation.frame
$data modify storage pink:animation id set value $(id)
function pink:animation/text_change1 with storage pink:animation {}



