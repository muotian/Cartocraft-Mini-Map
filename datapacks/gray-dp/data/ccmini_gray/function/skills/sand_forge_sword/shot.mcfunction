execute as @e[type=item_display,tag=gray.sand_forge_sword_temp,limit=1] run tag @s add gray.sand_forge_sword.shot
function ccmini_gray:skills/sand_forge_sword/raycast
rotate @e[type=item_display,tag=gray.sand_forge_sword_temp,limit=1] facing entity @e[type=marker,tag=gray.sand_forge_sword.marker,limit=1]
kill @e[type=marker,tag=gray.sand_forge_sword.marker,limit=1]
function ccmini_gray:skills/sand_forge_sword/tag
scoreboard players set @s gray.sfs_cd 10
tag @s add gray.sand_forge_sword_take
execute unless score @s gray.sfs_amount matches 6.. run scoreboard players add @s gray.sfs_amount 1
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.8 1
execute at @s run playsound item.firecharge.use player @a ~ ~ ~ 0.3 2