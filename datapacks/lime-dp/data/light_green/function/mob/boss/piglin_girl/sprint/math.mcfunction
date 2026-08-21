execute store result score $piglin_girl_weapon_all light_green.main.math run execute if entity @e[tag=light_green.boss.piglin_girl.axe]
scoreboard players operation $piglin_girl_weapon_all light_green.main.math /= $2 light_green.main.math
execute store result score $piglin_girl_weapon_dagger light_green.main.math run execute if entity @e[tag=light_green.boss.piglin_girl.dagger]
execute store result score $piglin_girl_weapon_spear light_green.main.math run execute if entity @e[tag=light_green.boss.piglin_girl.spear]
scoreboard players operation $piglin_girl_weapon_all light_green.main.math += $piglin_girl_weapon_dagger light_green.main.math
scoreboard players operation $piglin_girl_weapon_all light_green.main.math += $piglin_girl_weapon_spear light_green.main.math

execute if score $piglin_girl_weapon_all light_green.main.math matches 10.. run scoreboard players reset $piglin_girl_skill4 light_green.main.math
execute if score $piglin_girl_weapon_all light_green.main.math matches 10.. run scoreboard players reset $piglin_girl_sprint_axe light_green.main.math
execute if score $piglin_girl_weapon_all light_green.main.math matches 10.. run scoreboard players set $piglin_girl_skill2 light_green.main.math 1
execute if score $piglin_girl_weapon_all light_green.main.math matches 10.. run function light_green:mob/boss/piglin_girl/skill/sprint_weapon