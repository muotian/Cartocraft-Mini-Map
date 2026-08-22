playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2


title @s times 3 5 5
title @s title {"text":"\u9000","font":"pink:misc","shadow_color":16777215}

# 回血被動
execute if entity @s[tag=pink.armor.star2] run function pink:armor/star1/regeneration