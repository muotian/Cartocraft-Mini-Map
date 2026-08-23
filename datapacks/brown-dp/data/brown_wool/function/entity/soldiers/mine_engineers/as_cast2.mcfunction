# 執行者：技能1
# 執行位置：同上

# 產生粒子效果
execute if entity @s[tag=brown_wool.mine_engineers.cast2.1] run particle dust{color:[0.97, 0.9, 0.11],scale:1.0} ^ ^ ^ 0.1 0.1 0.1 0.1 3


# 發射
execute if entity @s[tag=brown_wool.mine_engineers.cast2.1] unless score @s brown_wool.mine_engineers.cast2 matches 1.. run rotate @s facing entity @p
execute if entity @s[tag=brown_wool.mine_engineers.cast2.1] if block ^ ^ ^0.8 air run tp @s ^ ^ ^0.8

execute if entity @s[tag=brown_wool.mine_engineers.cast2.3] if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

# 碰到人或方塊加tag
execute if entity @s[tag=brown_wool.mine_engineers.cast2.1] if entity @a[distance=..1] run tag @s add brown_wool.mine_engineers.cast2.2
execute if entity @s[tag=brown_wool.mine_engineers.cast2.1] unless block ^ ^ ^0.8 air run tag @s add brown_wool.mine_engineers.cast2.2

# 傷害
execute if entity @s[tag=brown_wool.mine_engineers.cast2.2] as @a[distance=..0.8] run damage @s 4 brown_wool:player_attack by @n[tag=brown_wool.mine_engineers]
execute if entity @s[tag=brown_wool.mine_engineers.cast2.2] run summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:sand"},Tags:["brown_wool.mine_engineers.cast2.3","brown_wool.mine_engineers.cast2.0"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0625f, 2.0f], translation: [-1.0f, -0.03125f, -1.0f]}}
execute if entity @s[tag=brown_wool.mine_engineers.cast2.2] run kill @s

execute if entity @s[tag=brown_wool.mine_engineers.cast2.3] positioned ~-1 ~-0.5 ~-1 as @a[dx=1,dy=0,dz=1] run effect give @s slowness 1 2 true

# 消失
scoreboard players add @s brown_wool.mine_engineers.cast2 1
execute if score @s brown_wool.mine_engineers.cast2 matches 120 run kill @s

