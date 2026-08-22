execute as @e[type=item_display,tag=gray.sand_forge_sword,tag=!gray.sand_forge_sword.shot] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run kill @s
scoreboard players set @s gray.sfs_cd 30
tag @s add gray.sand_forge_sword_take
function ccmini_gray:skills/sand_forge_sword/locate



scoreboard players reset @s gray.sfs_amount