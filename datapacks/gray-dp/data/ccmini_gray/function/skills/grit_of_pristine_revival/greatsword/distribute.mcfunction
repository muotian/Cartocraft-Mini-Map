#attack
execute if score @s gray.gopr_energy matches 1.. if score @s gray.gopr_attack_number matches 1 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/attack_1
execute if score @s gray.gopr_energy matches 1.. if score @s gray.gopr_attack_number matches 2 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/attack_2
execute if score @s gray.gopr_energy matches 1.. if score @s gray.gopr_attack_number matches 3 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/attack_3
execute if score @s gray.gopr_energy matches 1.. if score @s gray.gopr_attack_number matches 4 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/attack_4
execute unless score @s gray.gopr_energy matches 1.. unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. as @e[type=item_display,tag=aj.gray_gopr.root,tag=!gray.gopr.throw] if score @s gray.id = @a[tag=gray.user,limit=1] gray.id run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/sword_play
execute unless score @s gray.gopr_energy matches 1.. unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. as @s[tag=!gray.gopr.cannot_use] run tag @s add gray.gopr.cannot_use
#reset
execute if score @s gray.gopr_stop_attack matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/reset_attack_number

#丟出大刀，結束大招
#execute unless score @s gray.gopr_energy matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/tick