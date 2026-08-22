playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1
playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.5 2
playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 0.5 2

playsound pink:star_skill1_shoot6 player @a ~ ~ ~ 1 1
playsound pink:star_skill1_shoot7 player @a ~ ~ ~ 0.8 0.8

title @s times 3 5 5
title @s title {"text":"\u9001","font":"pink:misc","shadow_color":16777215}

# 回血被動
execute if entity @s[tag=pink.armor.star2] run function pink:armor/star1/regeneration




