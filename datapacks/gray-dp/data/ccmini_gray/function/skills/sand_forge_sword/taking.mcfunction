tag @s add gray.user
execute as @e[type=item_display,tag=gray.sand_forge_sword,tag=!gray.sand_forge_sword.shot] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run tag @s add gray.sand_forge_sword_temp
execute as @s[tag=!gray.sand_forge_sword.attack_2] run function ccmini_gray:skills/sand_forge_sword/right
execute as @s[tag=gray.sand_forge_sword.attack_2,tag=!gray.sand_forge_sword_rightclick] run function ccmini_gray:skills/sand_forge_sword/left
tag @s remove gray.sand_forge_sword_rightclick
tag @e[type=item_display,tag=gray.sand_forge_sword_temp] remove gray.sand_forge_sword_temp
tag @s remove gray.user