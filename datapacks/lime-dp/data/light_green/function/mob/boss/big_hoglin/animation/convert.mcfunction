scoreboard players remove @s light_green.boss.animation 1

execute if score @s light_green.boss.attack_type matches 1 run return run function light_green:mob/boss/big_hoglin/animation/rush
execute if score @s light_green.boss.attack_type matches 2 run return run function light_green:mob/boss/big_hoglin/animation/small_rush
execute if score @s light_green.boss.attack_type matches 3 run return run function light_green:mob/boss/big_hoglin/animation/attack1
execute if score @s light_green.boss.attack_type matches 4 run return run function light_green:mob/boss/big_hoglin/animation/small_jump
execute if score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/big_hoglin/animation/die
execute if score @s light_green.boss.attack_type matches 6 run return run function light_green:mob/boss/big_hoglin/animation/die_rush
execute if score @s light_green.boss.attack_type matches 7 run return run function light_green:mob/boss/big_hoglin/animation/die2

execute if score @s light_green.move_step matches 1.. run return run function light_green:mob/boss/big_hoglin/animation/move with storage mob:data

