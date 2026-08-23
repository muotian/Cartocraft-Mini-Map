# 執行者：技能4
# 執行位置：同上

# 增加計時器分數

scoreboard players add @s brown_wool.cangting_general.cast4 1


execute if entity @s[tag=brown_wool.cangting_general.cast4.2] run rotate @s facing ^0.6 ^ ^0.6
execute if entity @s[tag=brown_wool.cangting_general.cast4.2] at @n[tag=brown_wool.cangting_general.cast4.1] run tp @s ^ ^ ^6
execute if entity @s[tag=brown_wool.cangting_general.cast4.2] rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast_particle4
execute if entity @s[tag=brown_wool.cangting_general.cast4.2] rotated ~ 0 as @a[tag=brown_wool.cangting_general.player,distance=..3.2] run damage @s 8 brown_wool:lightning_bolt

execute if entity @s[tag=brown_wool.cangting_general.cast4.1] at @e[type=zombie ,tag=brown_wool.cangting_general,limit=1] run tp @s ~ ~1 ~
execute if entity @s[tag=brown_wool.cangting_general.cast4.1] at @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] run tp @s ~ ~1 ~
execute if entity @s[tag=brown_wool.cangting_general.cast4.1] run rotate @s facing ^0.6 ^ ^10



# 重置記分板
execute if score @s brown_wool.cangting_general.cast4 matches 200.. run kill @s


