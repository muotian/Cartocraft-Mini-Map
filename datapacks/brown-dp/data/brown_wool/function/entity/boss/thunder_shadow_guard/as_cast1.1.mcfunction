# 執行者：技能1
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunder_shadow_guard.cast1 1

rotate @s facing entity @n[type=marker,tag=brown_wool.thunder_shadow_guard.cast1.0]

execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 1..25 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle1.1

execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 25 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast1.2

execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 25 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle1.2

execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 25 rotated ~ 0 run tp @s ^ ^ ^7

execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 25 at @s as @a[distance=..10] run playsound entity.player.attack.sweep master @s


execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 29.. run tp @s ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.cast1 matches 29.. run kill @s


