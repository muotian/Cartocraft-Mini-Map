execute if score @s light_green.boss.attack_type matches 23..34 run return run function light_green:mob/boss/piglin_girl/rotate/sprint
execute if score @s light_green.boss.attack_type matches 15..16 run return run function light_green:mob/boss/piglin_girl/rotate/attack_marker
execute if score @s light_green.boss.attack_type matches 38..39 run return run function light_green:mob/boss/piglin_girl/rotate/attack_marker
execute if score $piglin_girl.sprint_rotate.late light_green.main.math matches 1.. run return run function light_green:mob/boss/piglin_girl/rotate/rotate_late
execute if score @s light_green.boss.attack_type matches 44..47 run return run function light_green:mob/boss/piglin_girl/rotate/axe_jump
execute if score @s light_green.boss.attack_type matches 11..13 run return run function light_green:mob/boss/piglin_girl/rotate/facing
execute if score @s light_green.boss.attack_type matches 1..3 run return run function light_green:mob/boss/piglin_girl/rotate/normal
#execute if score @s light_green.boss.attack_type matches 7..9 run return run function light_green:mob/boss/piglin_girl/rotate/attack
#execute if score @s light_green.boss.attack_type matches 18..22 run return run function light_green:mob/boss/piglin_girl/rotate/attack
#execute if score @s light_green.boss.attack_type matches 21..22 run return run function light_green:mob/boss/piglin_girl/rotate/attack
execute if score @s light_green.boss.attack_type matches 35 run return run function light_green:mob/boss/piglin_girl/rotate/normal
execute if score @s light_green.boss.attack_type matches 1.. run return run function light_green:mob/boss/piglin_girl/rotate/attack_test
execute if entity @n[tag=light_green.target] run return run function light_green:mob/boss/piglin_girl/rotate/target
function light_green:mob/boss/piglin_girl/rotate/normal