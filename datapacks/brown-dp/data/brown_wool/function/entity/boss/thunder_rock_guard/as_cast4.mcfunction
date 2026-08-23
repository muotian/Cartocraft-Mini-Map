
#增加計時器分數
execute unless score @s brown_wool.thunder_rock_guard.cast4 matches 1.. facing entity @e[type=husk, tag=brown_wool.thunder_rock_guard0,limit=1,] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
scoreboard players add @s brown_wool.thunder_rock_guard.cast4 1

# 產生粒子效果
particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute as @a[distance=..6] run playsound block.grass.hit player

# 發射
execute if score @s brown_wool.thunder_rock_guard.cast4 matches 1..20 run tp @s ^ ^0.1 ^
execute if score @s brown_wool.thunder_rock_guard.cast4 matches 35..75 rotated ~ 0 if entity @e[type=husk, tag=brown_wool.thunder_rock_guard0,limit=1,distance=1.2..] run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_rock_guard.cast4 matches 76..96 run tp @s ^ ^-0.1 ^

# 傷害

execute if score @s brown_wool.thunder_rock_guard.cast4 matches 34.. as @a[distance=..1.5,tag=brown_wool.thunder_rock_guard.player] run damage @s 14 brown_wool:player_attack by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]

# 消失
execute if score @s brown_wool.thunder_rock_guard.cast4 matches 96 run kill @s
