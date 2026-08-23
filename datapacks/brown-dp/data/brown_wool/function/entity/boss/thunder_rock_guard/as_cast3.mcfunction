
#增加計時器分數
execute unless score @s brown_wool.thunder_rock_guard.cast3 matches 1.. facing entity @p[tag=brown_wool.thunder_rock_guard.player] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
scoreboard players add @s brown_wool.thunder_rock_guard.cast3 1

# 產生粒子效果
particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute as @a[distance=..6] run playsound block.grass.hit player

# 發射
execute if score @s brown_wool.thunder_rock_guard.cast3 matches 1..20 run tp @s ^ ^0.1 ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.1] if score @s brown_wool.thunder_rock_guard.cast3 matches 30..70 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.2] if score @s brown_wool.thunder_rock_guard.cast3 matches 30..40 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.3] if score @s brown_wool.thunder_rock_guard.cast3 matches 30..40 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.4] if score @s brown_wool.thunder_rock_guard.cast3 matches 30..40 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.5] if score @s brown_wool.thunder_rock_guard.cast3 matches 30..40 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.2] if score @s brown_wool.thunder_rock_guard.cast3 matches 41..70 rotated ~ 0 if block ^0.7 ^ ^ air run tp @s ^0.7 ^ ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.3] if score @s brown_wool.thunder_rock_guard.cast3 matches 41..70 rotated ~ 0 if block ^-0.7 ^ ^ air run tp @s ^-0.7 ^ ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.4] if score @s brown_wool.thunder_rock_guard.cast3 matches 41..50 rotated ~ 0 if block ^0.7 ^ ^ air run tp @s ^0.7 ^ ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.5] if score @s brown_wool.thunder_rock_guard.cast3 matches 41..50 rotated ~ 0 if block ^-0.7 ^ ^ air run tp @s ^-0.7 ^ ^

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.4] if score @s brown_wool.thunder_rock_guard.cast3 matches 51..70 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast3.5] if score @s brown_wool.thunder_rock_guard.cast3 matches 51..70 rotated ~ 0 if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7

execute if score @s brown_wool.thunder_rock_guard.cast3 matches 66..86 run tp @s ^ ^-0.1 ^

# 傷害

execute if score @s brown_wool.thunder_rock_guard.cast3 matches 21.. at @s positioned ~-1 ~ ~-1 as @a[dx=1,dy=1,dz=1,tag=brown_wool.thunder_rock_guard.player] run damage @s 14 brown_wool:player_attack by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]

# 消失
execute if score @s brown_wool.thunder_rock_guard.cast3 matches 86 run kill @s
