
# 執行位置：同上

# 增加計時器分數
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] unless score @s brown_wool.thunder_shadow_guard.skill2 matches 1.. at @n[tag=brown_wool.thunder_shadow_guard.terrain] run tp @s ~ ~-0.5 ~17
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] unless score @s brown_wool.thunder_shadow_guard.skill2 matches 1.. at @n[tag=brown_wool.thunder_shadow_guard.terrain] run tp @s ~ ~-0.5 ~-17
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] unless score @s brown_wool.thunder_shadow_guard.skill2 matches 1.. at @n[tag=brown_wool.thunder_shadow_guard.terrain] run tp @s ~-17 ~-0.5 ~
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 1 run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 1 run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 1 run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]

scoreboard players add @s brown_wool.thunder_shadow_guard.skill2 1




execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.3

execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 13 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 13 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 13 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 18 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 18 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 18 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 23 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 23 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 23 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 28 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 28 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 28 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 33 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.3

execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 11 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 11 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 11 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 16 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 16 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 16 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 21 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 21 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 21 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 26 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 26 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 26 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill_particle2.3
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.1
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.2
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 31 run function brown_wool:entity/boss/thunder_shadow_guard/skill2.3


# 重置記分板
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.1] if score @s brown_wool.thunder_shadow_guard.skill2 matches 45.. run kill @s
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.2] if score @s brown_wool.thunder_shadow_guard.skill2 matches 43.. run kill @s
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill2.3] if score @s brown_wool.thunder_shadow_guard.skill2 matches 41.. run kill @s


