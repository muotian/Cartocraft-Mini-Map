# 執行者：技能2
# 執行位置：同上

# 增加計時器分數
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 31 at @p[tag=brown_wool.cangting_general.player] run summon item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.cast1.3","brown_wool.cangting_general.cast1.0"]}
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 31 run rotate @s facing entity @n[tag=brown_wool.cangting_general.cast1.3]
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 32 run rotate @s facing ^ ^1 ^1
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 230 at @p[tag=brown_wool.cangting_general.player] run summon item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.cast1.3","brown_wool.cangting_general.cast1.0"]}
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 230 run rotate @s facing entity @n[tag=brown_wool.cangting_general.cast1.3]
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 231 run rotate @s facing ^ ^1 ^1
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 32..36 run tp @s ^ ^ ^1
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 36 run rotate @s facing entity @n[tag=brown_wool.cangting_general.cast1.3]
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 37.. if block ^ ^ ^0.65 air run tp @s ^ ^ ^0.65
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 232..236 run tp @s ^ ^ ^1
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 236 run rotate @s facing entity @n[tag=brown_wool.cangting_general.cast1.3]
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 237.. if block ^ ^ ^0.65 air run tp @s ^ ^ ^0.65

scoreboard players add @s brown_wool.cangting_general.cast1 1

# 效果
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 37..229 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.cast1.2] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 37..229 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.cast1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 18 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 237..429 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.cast1.2] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 237..429 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.cast1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 18 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 37..229 unless block ^ ^ ^0.65 air run tag @s add brown_wool.cangting_general.cast1.2
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 237..429 unless block ^ ^ ^0.65 air run tag @s add brown_wool.cangting_general.cast1.2
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 230 run tag @s remove brown_wool.cangting_general.cast1.2
# 產生粒子效果
execute if entity @s[tag=brown_wool.cangting_general.cast1.2] rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast_particle1
execute if entity @s[tag=brown_wool.cangting_general.cast1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run effect give @s slowness 1 2 true
execute if entity @s[tag=brown_wool.cangting_general.cast1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 4 brown_wool:lightning_bolt




# 重置記分板
execute if entity @s[tag=brown_wool.cangting_general.cast1.1] if score @s brown_wool.cangting_general.cast1 matches 430.. run kill @s

execute if entity @s[tag=brown_wool.cangting_general.cast1.3] if score @s brown_wool.cangting_general.cast1 matches 40.. run kill @s

