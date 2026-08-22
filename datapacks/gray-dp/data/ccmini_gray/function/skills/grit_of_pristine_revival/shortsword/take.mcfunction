#拿起時觸發一次
tag @s add gray.user
function animated_java:gray_gopr/summon {args:{}}
execute as @e[type=item_display,tag=aj.gray_gopr.root,distance=..1,sort=nearest,limit=1] unless score @s gray.id matches 1.. run tag @s add gray.new
execute as @e[type=item_display,tag=gray.new] run scoreboard players operation @s gray.id = @a[tag=gray.user,limit=1] gray.id
execute unless score @s gray.gopr_mode matches 1.. as @e[type=item_display,tag=gray.new] run function animated_java:gray_gopr/animations/short_take_1/play
execute if score @s gray.gopr_mode matches 1 as @e[type=item_display,tag=gray.new] run function animated_java:gray_gopr/animations/short_take_2/play
scoreboard players set @s gray.gopr_cd 7
scoreboard players set @s gray.gopr_attack_number 1
tag @s remove gray.user
tag @e[type=item_display,tag=gray.new] remove gray.new
