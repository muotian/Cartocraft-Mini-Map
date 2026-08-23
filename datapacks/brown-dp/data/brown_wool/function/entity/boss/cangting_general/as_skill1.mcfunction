# 執行位置：同上

# 增加計時器分數
execute if entity @s[tag=brown_wool.cangting_general.skill1.4] unless score @s brown_wool.cangting_general.skill1 matches 1.. at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run summon item_display ~8.5 ~-0.5 ~8.5 {Tags:["brown_wool.cangting_general.skill1.3","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.8"]}
execute if entity @s[tag=brown_wool.cangting_general.skill1.4] unless score @s brown_wool.cangting_general.skill1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.8]

execute if entity @s[tag=brown_wool.cangting_general.skill1.5] unless score @s brown_wool.cangting_general.skill1 matches 1.. at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run summon item_display ~-8.5 ~-0.5 ~8.5 {Tags:["brown_wool.cangting_general.skill1.3","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.9"]}
execute if entity @s[tag=brown_wool.cangting_general.skill1.5] unless score @s brown_wool.cangting_general.skill1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.9]

execute if entity @s[tag=brown_wool.cangting_general.skill1.6] unless score @s brown_wool.cangting_general.skill1 matches 1.. at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run summon item_display ~8.5 ~-0.5 ~-8.5 {Tags:["brown_wool.cangting_general.skill1.3","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.10"]}
execute if entity @s[tag=brown_wool.cangting_general.skill1.6] unless score @s brown_wool.cangting_general.skill1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.10]

execute if entity @s[tag=brown_wool.cangting_general.skill1.7] unless score @s brown_wool.cangting_general.skill1 matches 1.. at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run summon item_display ~-8.5 ~-0.5 ~-8.5 {Tags:["brown_wool.cangting_general.skill1.3","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.11"]}
execute if entity @s[tag=brown_wool.cangting_general.skill1.7] unless score @s brown_wool.cangting_general.skill1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.11]

execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 2 run rotate @s facing ^ ^1 ^1
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 200 at @r[tag=brown_wool.cangting_general.player] run summon item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.skill1.3","brown_wool.cangting_general.skill1.0"]}
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 200 run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.3]
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 201 run rotate @s facing ^ ^1 ^1
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 2..6 run tp @s ^ ^ ^1
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 6 run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.3]
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 7.. if block ^ ^ ^0.65 air run tp @s ^ ^ ^0.65
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 202..206 run tp @s ^ ^ ^1
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 206 run rotate @s facing entity @n[tag=brown_wool.cangting_general.skill1.3]
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 207.. if block ^ ^ ^0.65 air run tp @s ^ ^ ^0.65

scoreboard players add @s brown_wool.cangting_general.skill1 1

# 效果
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 7..199 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.skill1.2] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 7..199 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.skill1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 16 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 207..399 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.skill1.2] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 207..399 unless block ^ ^ ^0.65 air if entity @s[tag=!brown_wool.cangting_general.skill1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 16 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 7..199 unless block ^ ^ ^0.65 air run tag @s add brown_wool.cangting_general.skill1.2
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 207..399 unless block ^ ^ ^0.65 air run tag @s add brown_wool.cangting_general.skill1.2
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 200 run tag @s remove brown_wool.cangting_general.skill1.2
# 產生粒子效果
execute if entity @s[tag=brown_wool.cangting_general.skill1.2] rotated ~ 0 run function brown_wool:entity/boss/cangting_general/skill_particle1
execute if entity @s[tag=brown_wool.cangting_general.skill1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run effect give @s slowness 1 2 true
execute if entity @s[tag=brown_wool.cangting_general.skill1.2] positioned ~ ~0.5 ~ as @a[tag=brown_wool.cangting_general.player,distance=..5.2] run damage @s 3 brown_wool:lightning_bolt




# 重置記分板
execute if entity @s[tag=brown_wool.cangting_general.skill1.1] if score @s brown_wool.cangting_general.skill1 matches 400.. run kill @s

execute if entity @s[tag=brown_wool.cangting_general.skill1.3] if score @s brown_wool.cangting_general.skill1 matches 9.. run kill @s

