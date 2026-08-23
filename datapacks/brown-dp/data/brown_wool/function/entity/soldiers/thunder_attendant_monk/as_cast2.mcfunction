# 執行者：電芒侍僧技能2
# 執行位置：同上

#增加計時器分數
execute unless score @s brown_wool.thunder_attendant_monk.cast2 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_attendant_monk.cast2.2]
scoreboard players add @s brown_wool.thunder_attendant_monk.cast2 1

# 產生粒子效果
particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute as @a[distance=..6] run playsound block.grass.hit player

# 發射
execute if score @s brown_wool.thunder_attendant_monk.cast2 matches 1..20 run tp @s ^ ^0.15 ^
execute if score @s brown_wool.thunder_attendant_monk.cast2 matches 25..45 rotated ~ 0 if block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_attendant_monk.cast2 matches 46..66 run tp @s ^ ^-0.15 ^

# 傷害
execute as @a[distance=..1.5] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunder_attendant_monk]


# 消失
execute if score @s brown_wool.thunder_attendant_monk.cast2 matches 66 run kill @s
execute if entity @s[tag=brown_wool.thunder_attendant_monk.cast2.2] if score @s brown_wool.thunder_attendant_monk.cast2 matches 2 run kill @s
