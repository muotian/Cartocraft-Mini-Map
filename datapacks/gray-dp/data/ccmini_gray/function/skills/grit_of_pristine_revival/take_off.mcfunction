#放下時觸發一次
tag @s remove gray.taking_gopr

tag @s add gray.user
execute as @e[type=item_display,tag=aj.gray_gopr.root,tag=!gray.gopr.throw] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run function animated_java:gray_gopr/remove/this
scoreboard players reset @s gray.gopr_cannot_use_flash
tag @s remove gray.user