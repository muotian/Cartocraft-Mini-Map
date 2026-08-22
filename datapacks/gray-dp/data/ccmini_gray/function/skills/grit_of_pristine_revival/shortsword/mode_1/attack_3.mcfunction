execute as @e[type=item_display,tag=aj.gray_gopr.root] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run function animated_java:gray_gopr/animations/short_attack_5/play
scoreboard players set @s gray.gopr_cd 25
scoreboard players set @s gray.gopr_stop_attack 40
scoreboard players set @s gray.gopr_attack_number 1
scoreboard players set @s gray.gopr_mode 0

