scoreboard players reset $big_hoglin.summon light_green.main.math
execute if score $hoglin_limit light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/hurt/default/15-/convert

execute if score @s light_green.custom.health matches 0.. if score @s light_green.custom.health <= $big_hoglin.skin_need_1 light_green.main.math run return run function light_green:mob/boss/big_hoglin/hurt/default/5
execute if score @s light_green.custom.health > $big_hoglin.skin_need_1 light_green.main.math if score @s light_green.custom.health <= $big_hoglin.skin_need_2 light_green.main.math run return run function light_green:mob/boss/big_hoglin/hurt/default/4
execute if score @s light_green.custom.health > $big_hoglin.skin_need_2 light_green.main.math if score @s light_green.custom.health <= $big_hoglin.skin_need_3 light_green.main.math run return run function light_green:mob/boss/big_hoglin/hurt/default/3
execute if score @s light_green.custom.health > $big_hoglin.skin_need_3 light_green.main.math if score @s light_green.custom.health <= $big_hoglin.skin_need_4 light_green.main.math run return run function light_green:mob/boss/big_hoglin/hurt/default/2
execute if score @s light_green.custom.health > $big_hoglin.skin_need_4 light_green.main.math if score @s light_green.custom.health <= $big_hoglin.skin_need_5 light_green.main.math run return run function light_green:mob/boss/big_hoglin/hurt/default/1
execute if score @s light_green.mob.ai matches 1.. unless score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/big_hoglin/hurt/default/zoglin
execute if score @s light_green.mob.ai matches 1.. if score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/big_hoglin/hurt/default/5