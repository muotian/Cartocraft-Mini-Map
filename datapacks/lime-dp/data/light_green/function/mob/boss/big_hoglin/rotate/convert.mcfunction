execute if score @s light_green.boss.attack_type matches 1 run return run function light_green:mob/boss/big_hoglin/rotate/rush
execute if score @s light_green.boss.attack_type matches 2 run return run function light_green:mob/boss/big_hoglin/rotate/small_rush
execute if score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/big_hoglin/rotate/normal
execute if score @s light_green.boss.attack_type matches 7 run return run function light_green:mob/boss/big_hoglin/rotate/normal
execute if score @s light_green.boss.attack_type matches 6 run return run function light_green:mob/boss/big_hoglin/rotate/small_rush
execute if entity @n[tag=light_green.target] run return run function light_green:mob/boss/big_hoglin/rotate/target
function light_green:mob/boss/big_hoglin/rotate/normal