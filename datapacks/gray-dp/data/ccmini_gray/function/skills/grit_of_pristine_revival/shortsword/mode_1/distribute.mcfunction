#attack
execute if score @s gray.gopr_attack_number matches 1 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. unless score @s gray.gopr_cannot_use_flash matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_1/attack_1
execute if score @s gray.gopr_attack_number matches 2 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. unless score @s gray.gopr_cannot_use_flash matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_1/attack_2
execute if score @s gray.gopr_attack_number matches 3 unless score @s gray.gopr_cd matches 1.. if score @s gray.leftclick matches 1.. unless score @s gray.gopr_cannot_use_flash matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_1/attack_3

#reset
execute if score @s gray.gopr_stop_attack matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/mode_1/reset_attack_number