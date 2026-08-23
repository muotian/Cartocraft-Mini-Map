# 執行者：
# 執行位置：



# 增加計時器分數
scoreboard players add @s brown_wool.thunder_vortex1 1
scoreboard players add @s brown_wool.thunder_vortex2 1

# 產生粒子效果
rotate @s facing ^1 ^ ^5
particle dust{color:[0, 0.84, 1],scale:1.5} ^ ^0.5 ^3 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[0.1, 0.55, 0.9],scale:1.5} ^ ^0.5 ^-2 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[0.24, 0.33, 0.83],scale:1.5} ^1 ^1.5 ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 0, 0.97],scale:1.5} ^-3 ^1.5 ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0.84, 1],scale:1.5} ^-2 ^2.5 ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[0.1, 0.55, 0.9],scale:1.5} ^ ^2.5 ^2 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[0.24, 0.33, 0.83],scale:1.5} ^ ^2 ^4.5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 0, 0.97],scale:1.5} ^4 ^0.5 ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

# 吸引
execute if score @s brown_wool.thunder_vortex2 matches 5.. run tag @s add brown_wool.thunder_vortex3
execute if score @s brown_wool.thunder_vortex2 matches 5.. as @e[type=!player,type=!marker,type=!item_display,type=!text_display,type=!block_display,type=!interaction,type=!arrow,type=!item,type=!painting,type=!ender_pearl,type=!item_frame,distance=..5] unless data entity @s NoAI at @s facing entity @n[type=marker,tag=brown_wool.thunder_vortex3] feet rotated ~ 0 if block ^ ^ ^0.5 air run tp @s ^ ^ ^0.5


# 傷害
execute if score @s brown_wool.thunder_vortex2 matches 5.. as @e[type=!player,type=!marker,type=!item_display,type=!text_display,type=!block_display,type=!interaction,type=!arrow,type=!item,type=!painting,type=!ender_pearl,type=!item_frame,distance=..5] run damage @s 1 lightning_bolt
execute if score @s brown_wool.thunder_vortex1 matches 100.. at @s run summon lightning_bolt ~ ~ ~

# 重置記分板
execute if score @s brown_wool.thunder_vortex2 matches 5.. run scoreboard players reset @s brown_wool.thunder_vortex2
execute if entity @s[tag=brown_wool.thunder_vortex3] run tag @s remove brown_wool.thunder_vortex3

# 消失
execute if score @s brown_wool.thunder_vortex1 matches 100.. run kill @s


