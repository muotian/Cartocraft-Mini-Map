#
scoreboard players add @e[tag=pink_white_marker] pink.white.protect_cd 1
tag @s[scores={pink.white.protect_cd=240..}] remove pink_white_marker

# tp
tag @s add this_p
execute as @e[tag=pink_white_marker,type=text_display] if score @s pink.white.protect_cd = @p[tag=pink_white_marker,tag=this_p] pink.white.protect_cd run tp @s ~ ~ ~ ~ 0
tag @s remove this_p 

kill @e[type=text_display,tag=pink_white_marker,scores={pink.white.protect_cd=240..}]

###





