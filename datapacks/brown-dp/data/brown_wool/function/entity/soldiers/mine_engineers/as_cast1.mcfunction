# 執行者：技能1
# 執行位置：同上



# 碰到人或方塊加tag
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0] run tag @s add brown_wool.mine_engineers.cast1.2

# 傷害
execute if entity @s[tag=brown_wool.mine_engineers.cast1.2] as @a[distance=..2.5] run damage @s 18 brown_wool:explosion
execute if entity @s[tag=brown_wool.mine_engineers.cast1.2] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 30
execute if entity @s[tag=brown_wool.mine_engineers.cast1.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.mine_engineers.cast1.2] run kill @s

# 消失
scoreboard players add @s brown_wool.mine_engineers.cast1 1
execute if score @s brown_wool.mine_engineers.cast1 matches 600 run kill @s

