
execute as @a unless score @s gray.gopr_attack_number matches 1.. run scoreboard players set @s gray.gopr_attack_number 1
execute as @a[nbt={DeathTime:1s}] at @s run function ccmini_gray:skills/grit_of_pristine_revival/take_off
execute as @e[type=item_display,tag=aj.gray_gopr.root,tag=!gray.gopr.throw] at @s run function ccmini_gray:skills/grit_of_pristine_revival/debug/if_owner_online
execute as @e[type=marker,tag=gray.remove_player_tag.taking_gopr] run function ccmini_gray:skills/grit_of_pristine_revival/debug/if_back_online

execute as @a store success score @s gray.take_gopr if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{grit_of_pristine_revival:1b}]
execute as @a[tag=!gray.taking_gopr] at @s if score @s gray.take_gopr matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/take
execute as @a[tag=gray.taking_gopr] at @s if score @s gray.take_gopr matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/take_off
execute as @a[tag=gray.taking_gopr,tag=!gray.gopr.cannot_use] at @s if score @s gray.take_gopr matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/taking

execute as @e[type=item_display,tag=gray.gopr.throw] unless score @s gray.exist matches 40.. run scoreboard players add @s gray.exist 1
execute as @e[type=item_display,tag=gray.gopr.throw] if score @s gray.exist matches 7.. at @s run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/move
execute as @e[type=item_display,tag=gray.gopr.throw] if score @s gray.exist matches 40 at @s run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/explosion

execute as @e[type=marker,tag=gray.player_offline.gopr.great.switch] run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/offline_marker_run

execute as @a if score @s gray.gopr_cannot_use_flash matches 1.. run scoreboard players remove @s gray.gopr_cannot_use_flash 1
execute as @a if score @s gray.gopr_cannot_use_flash matches ..0 run scoreboard players reset @s gray.gopr_cannot_use_flash

execute as @e[type=item_display,tag=gray.gopr.ca.sandsword,limit=1] at @s run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/cooperative_attack/tick
execute as @a if score @s gray.gopr_cooperative_attack.cd matches 1.. run scoreboard players remove @s gray.gopr_cooperative_attack.cd 1