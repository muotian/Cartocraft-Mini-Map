execute positioned ^1 ^ ^1 run tp @e[type=item_display,tag=gray.sand_forge_sword_temp] ~ ~ ~ ~ ~
execute unless score @s gray.sfs_cd matches 1.. if score @s gray.leftclick matches 1.. at @s anchored eyes positioned ^ ^ ^ run function ccmini_gray:skills/sand_forge_sword/shot
execute unless score @s gray.sfs_amount matches 6 if score @s gray.rightclick matches 1.. run function ccmini_gray:skills/sand_forge_sword/failure_message
execute if score @s gray.sfs_amount matches 6 if score @s gray.rightclick matches 1.. run function ccmini_gray:skills/sand_forge_sword/rightclick
tag @s add gray.sand_forge_sword_rightclick