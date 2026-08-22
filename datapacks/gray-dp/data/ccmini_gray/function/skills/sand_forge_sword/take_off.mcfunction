#放下時觸發一次
tag @s remove gray.taking_sfs
tag @s add gray.user
execute as @e[type=item_display,tag=gray.sand_forge_sword,tag=!gray.sand_forge_sword.shot] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run kill @s


tag @s remove gray.user