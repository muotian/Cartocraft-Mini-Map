execute if score $hoglin_attack light_green.boss.animation matches 1.. run scoreboard players remove $hoglin_attack light_green.boss.animation 1
execute if score $hoglin_roar light_green.boss.animation matches 1..36 run scoreboard players remove $hoglin_roar light_green.boss.animation 1
execute if score $hoglin_roar light_green.boss.animation matches 50..86 run scoreboard players remove $hoglin_roar light_green.boss.animation 1

execute if score $hoglin_attack light_green.boss.animation matches 1.. run function light_green:mob/boss/big_hoglin/head_animation/attack
execute if score $hoglin_roar light_green.boss.animation matches 1..36 run function light_green:mob/boss/big_hoglin/head_animation/roar
execute if score $hoglin_roar light_green.boss.animation matches 50..86 run function light_green:mob/boss/big_hoglin/head_animation/die_roar