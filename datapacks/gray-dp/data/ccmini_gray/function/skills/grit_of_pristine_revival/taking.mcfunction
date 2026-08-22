#拿著一直觸發
tag @s add gray.user
execute unless score @s gray.gopr_mode matches 2 anchored eyes positioned ^ ^ ^0.8 as @e[type=item_display,tag=aj.gray_gopr.root] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run tp @s ~ ~ ~ ~ ~
execute if score @s gray.gopr_mode matches 2 anchored eyes rotated ~ 0 positioned ^ ^ ^ as @e[type=item_display,tag=aj.gray_gopr.root] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id unless score @s gray.exist matches 7.. run tp @s ~ ~ ~ ~ ~

execute unless score @s gray.gopr_mode matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_0/distribute
execute if score @s gray.gopr_mode matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_1/distribute
execute unless score $gopr_skill_locked gray.map_event matches 1 unless score @s gray.gopr_mode matches 2 run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/rightclick/rc

#大劍閃避
execute if entity @s[nbt=!{DeathTime:0s}] run scoreboard players set @s gray.gopr.dodge.cd 5
execute unless score $gopr_skill_locked gray.map_event matches 1 if score @s gray.gopr_mode matches 2 if score @s gray.rightclick matches 1.. if predicate ccmini_gray:shift run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/shift_dodge_switch
execute unless score $gopr_skill_locked gray.map_event matches 1 if score @s gray.gopr_mode matches 2 if score @s gray.rightclick matches 1.. unless predicate ccmini_gray:shift unless score @s gray.gopr.dodge.cd matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/motion
execute unless score $gopr_skill_locked gray.map_event matches 1 if score @s[tag=gray.gopr.shift_dodge] gray.gopr_mode matches 2 unless score @s gray.rightclick matches 1.. if predicate ccmini_gray:shift unless score @s gray.gopr.dodge.cd matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/motion

execute if score @s gray.gopr_mode matches 2 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/distribute

#顯示能量
execute unless score $gopr_skill_locked gray.map_event matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/energy_display

tag @s remove gray.user