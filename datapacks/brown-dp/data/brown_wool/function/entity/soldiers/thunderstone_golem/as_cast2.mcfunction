# 執行者：雷紋石傀技能2
# 執行位置：同上

#增加計時器分數
execute unless score @s brown_wool.thunderstone_golem.cast2 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunderstone_golem.cast2.2]
scoreboard players add @s brown_wool.thunderstone_golem.cast2 1

# 產生粒子效果
particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 force @a[distance=..50]
particle dust{color:[0.88, 0, 1],scale:1.0} ~ ~ ~ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

#發射
execute if block ^ ^ ^0.6 air run tp @s ^ ^ ^0.6
execute if block ^ ^-1 ^ air run kill @s

#碰到人或方塊加tag
execute unless block ^ ^ ^0.6 air run tag @s add brown_wool.thunderstone_golem.cast2.3
execute if entity @a[distance=..1] run tag @s add brown_wool.thunderstone_golem.cast2.3

#傷害
execute if entity @s[tag=brown_wool.thunderstone_golem.cast2.3] as @a[distance=..2.5] run damage @s 12 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem]
execute if entity @s[tag=brown_wool.thunderstone_golem.cast2.3] run summon lightning_bolt
execute if entity @s[tag=brown_wool.thunderstone_golem.cast2.3] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 30
execute if entity @s[tag=brown_wool.thunderstone_golem.cast2.3] run kill @s

#消失
execute if score @s brown_wool.thunderstone_golem.cast2 matches 60 run kill @s
execute if entity @s[tag=brown_wool.thunderstone_golem.cast2.2] if score @s brown_wool.thunderstone_golem.cast2 matches 2 run kill @s
