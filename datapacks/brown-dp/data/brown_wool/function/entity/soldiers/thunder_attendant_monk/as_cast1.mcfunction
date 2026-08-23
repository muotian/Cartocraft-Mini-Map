# 執行者：電芒侍僧技能1
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunder_attendant_monk.cast1 1

# 傷害
execute if score @s brown_wool.thunder_attendant_monk.cast1 matches 20 run summon block_display ^ ^10 ^ {block_state:{Name:amethyst_block},Tags:["brown_wool.thunder_attendant_monk.cast1.2"],transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,-1.0000f,0.5000f,-0.0000f,1.0000f,-0.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],view_range:10}
execute if score @s brown_wool.thunder_attendant_monk.cast1 matches 38.. as @a[distance=..8] run playsound entity.generic.explode player
execute if score @s brown_wool.thunder_attendant_monk.cast1 matches 40.. run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 50
execute if score @s brown_wool.thunder_attendant_monk.cast1 matches 40.. as @a[distance=..2.8] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunder_attendant_monk]


# 產生粒子效果
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^2.5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^-2.5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^-2.5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^2.5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

# 效果
rotate @s facing ^0.6 ^ ^5

# 重置記分板
execute if score @s brown_wool.thunder_attendant_monk.cast1 matches 40.. run kill @s


