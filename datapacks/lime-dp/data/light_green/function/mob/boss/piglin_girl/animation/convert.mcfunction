scoreboard players remove @s light_green.boss.animation 1
scoreboard players reset $piglin_girl_idle light_green.main.math

execute if score @s light_green.boss.attack_type matches -2..0 run function light_green:mob/boss/piglin_girl/default
execute if score @s light_green.boss.attack_type matches -4 run return run function light_green:mob/boss/piglin_girl/animation/defeated/0
execute if score @s light_green.boss.attack_type matches -3 run return run function light_green:mob/boss/piglin_girl/animation/to_level2/0
execute if score @s light_green.boss.attack_type matches -2 run return run function light_green:mob/boss/piglin_girl/animation/summon/0
execute if score @s light_green.boss.attack_type matches -1 run return run function light_green:mob/boss/piglin_girl/animation/summon/2
execute if score @s light_green.boss.attack_type matches 0 run return run function light_green:mob/boss/piglin_girl/animation/summon/1
execute if score @s light_green.boss.attack_type matches 1 run return run function light_green:mob/boss/piglin_girl/animation/axe/1
execute if score @s light_green.boss.attack_type matches 2 run return run function light_green:mob/boss/piglin_girl/animation/axe/2
execute if score @s light_green.boss.attack_type matches 3 run return run function light_green:mob/boss/piglin_girl/animation/axe/3
execute if score @s light_green.boss.attack_type matches 4 run return run function light_green:mob/boss/piglin_girl/animation/axe/throw1
execute if score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/piglin_girl/animation/axe/throw2
execute if score @s light_green.boss.attack_type matches 6 run return run function light_green:mob/boss/piglin_girl/animation/dagger/start_1
execute if score @s light_green.boss.attack_type matches 7 run return run function light_green:mob/boss/piglin_girl/animation/dagger/2
execute if score @s light_green.boss.attack_type matches 8 run return run function light_green:mob/boss/piglin_girl/animation/dagger/3
execute if score @s light_green.boss.attack_type matches 9 run return run function light_green:mob/boss/piglin_girl/animation/dagger/1
execute if score @s light_green.boss.attack_type matches 10 run return run function light_green:mob/boss/piglin_girl/animation/dagger/end
execute if score @s light_green.boss.attack_type matches 11 run return run function light_green:mob/boss/piglin_girl/animation/dagger/throw_start1
execute if score @s light_green.boss.attack_type matches 12 run return run function light_green:mob/boss/piglin_girl/animation/dagger/throw1
execute if score @s light_green.boss.attack_type matches 13 run return run function light_green:mob/boss/piglin_girl/animation/dagger/throw2
execute if score @s light_green.boss.attack_type matches 14 run return run function light_green:mob/boss/piglin_girl/animation/dagger/throw_end
execute if score @s light_green.boss.attack_type matches 15 run return run function light_green:mob/boss/piglin_girl/animation/spear/1_deal
execute if score @s light_green.boss.attack_type matches 16 run return run function light_green:mob/boss/piglin_girl/animation/spear/end_deal
execute if score @s light_green.boss.attack_type matches 17 run return run function light_green:mob/boss/piglin_girl/animation/spear/1
execute if score @s light_green.boss.attack_type matches 18 run return run function light_green:mob/boss/piglin_girl/animation/spear/2
execute if score @s light_green.boss.attack_type matches 20 run return run function light_green:mob/boss/piglin_girl/animation/spear/end
execute if score @s light_green.boss.attack_type matches 21 run return run function light_green:mob/boss/piglin_girl/animation/spear/throw
execute if score @s light_green.boss.attack_type matches 22 run return run function light_green:mob/boss/piglin_girl/animation/spear/throw_end
execute if score @s light_green.boss.attack_type matches 23 run return run function light_green:mob/boss/piglin_girl/animation/axe/sprint_target
execute if score @s light_green.boss.attack_type matches 24 run return run function light_green:mob/boss/piglin_girl/animation/axe/sprint_weapon
execute if score @s light_green.boss.attack_type matches 25 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_target
execute if score @s light_green.boss.attack_type matches 26 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_weapon
execute if score @s light_green.boss.attack_type matches 27 run return run function light_green:mob/boss/piglin_girl/animation/spear/sprint_target
execute if score @s light_green.boss.attack_type matches 28 run return run function light_green:mob/boss/piglin_girl/animation/spear/sprint_weapon
execute if score @s light_green.boss.attack_type matches 29 run return run function light_green:mob/boss/piglin_girl/animation/axe/sprint_target_end
execute if score @s light_green.boss.attack_type matches 30 run return run function light_green:mob/boss/piglin_girl/animation/axe/sprint_weapon_end
execute if score @s light_green.boss.attack_type matches 31 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_target_end
execute if score @s light_green.boss.attack_type matches 32 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_weapon_end
execute if score @s light_green.boss.attack_type matches 33 run return run function light_green:mob/boss/piglin_girl/animation/spear/sprint_target_end
execute if score @s light_green.boss.attack_type matches 34 run return run function light_green:mob/boss/piglin_girl/animation/spear/sprint_weapon_end
execute if score @s light_green.boss.attack_type matches 35 run return run function light_green:mob/boss/piglin_girl/animation/axe/sprint_target_end_skill2
execute if score @s light_green.boss.attack_type matches 36 run return run function light_green:mob/boss/piglin_girl/animation/dagger/jump
execute if score @s light_green.boss.attack_type matches 37 run return run function light_green:mob/boss/piglin_girl/animation/dagger/jump_end
execute if score @s light_green.boss.attack_type matches 38 run return run function light_green:mob/boss/piglin_girl/animation/spear/2_deal
execute if score @s light_green.boss.attack_type matches 39 run return run function light_green:mob/boss/piglin_girl/animation/spear/end2_deal
execute if score @s light_green.boss.attack_type matches 40 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_damage
execute if score @s light_green.boss.attack_type matches 41 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_damage_end
execute if score @s light_green.boss.attack_type matches 42 run return run function light_green:mob/boss/piglin_girl/animation/dagger/sprint_damage_failend
execute if score @s light_green.boss.attack_type matches 43 run return run function light_green:mob/boss/piglin_girl/animation/axe/jump
execute if score @s light_green.boss.attack_type matches 44 run return run function light_green:mob/boss/piglin_girl/animation/axe/jump_end
execute if score @s light_green.boss.attack_type matches 45 run return run function light_green:mob/boss/piglin_girl/animation/axe/jump_replay
execute if score @s light_green.boss.attack_type matches 46 run return run function light_green:mob/boss/piglin_girl/animation/axe/jump_end_late
execute if score @s light_green.boss.attack_type matches 47 run return run function light_green:mob/boss/piglin_girl/animation/axe/jump_replay_late
execute if score @s light_green.boss.attack_type matches 48 run return run function light_green:mob/boss/piglin_girl/animation/axe/back_jump
execute if score @s light_green.boss.attack_type matches 49 run return run function light_green:mob/boss/piglin_girl/animation/axe/back_jump_end




execute if score @s light_green.move_step matches 1.. run return run function light_green:mob/boss/piglin_girl/animation/move with storage mob:data