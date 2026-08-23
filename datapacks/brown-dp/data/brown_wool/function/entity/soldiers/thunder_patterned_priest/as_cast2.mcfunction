# 執行者：霆紋侍祭技能2
# 執行位置：同上

#增加計時器分數

execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] unless score @s brown_wool.thunder_patterned_priest.cast2 matches 1.. run rotate @s facing entity @p

scoreboard players add @s brown_wool.thunder_patterned_priest.cast2 1

# 產生粒子效果
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] run particle dust{color:[0.59, 0, 0.86],scale:1} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] run particle dust{color:[0.59, 0, 0.86],scale:2.5} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] run tp @s ^ ^ ^0.5


execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] if entity @a[distance=..0.8] run tag @s add brown_wool.thunder_patterned_priest.cast2.3
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] unless block ^ ^ ^0.5 air run tag @s add brown_wool.thunder_patterned_priest.cast2.3

# 傷害
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.3] as @a[distance=..1.5] run damage @s 10 brown_wool:bypasses_cooldown by @n[type=stray, tag=brown_wool.thunder_patterned_priest]
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.3] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 30
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.3] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.3] run kill @s


execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 20 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 40 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 60 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 80 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 100 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 120 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 140 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 160 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 180 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 200 run summon block_display ^ ^ ^0.3 {Tags:["brown_wool.thunder_patterned_priest.cast2.2","brown_wool.thunder_patterned_priest.cast2.0"]}


# 消失
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.1] if score @s brown_wool.thunder_patterned_priest.cast2 matches 210 run kill @s
execute if entity @s[tag=brown_wool.thunder_patterned_priest.cast2.2] if score @s brown_wool.thunder_patterned_priest.cast2 matches 100 run kill @s



