# 執行者：右鍵的玩家
# 執行位置：同上

# 
execute if entity @s[tag=brown_wool.thunder_spirit_spell1] unless score @s brown_wool.thunder_spirit_spell1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_spirit_spell1.1]
execute if entity @s[tag=brown_wool.thunder_spirit_spell2] unless score @s brown_wool.thunder_spirit_spell1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_spirit_spell2.1]
execute if entity @s[tag=brown_wool.thunder_spirit_spell3] unless score @s brown_wool.thunder_spirit_spell1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_spirit_spell3.1]
execute if entity @s[tag=brown_wool.thunder_spirit_spell4] unless score @s brown_wool.thunder_spirit_spell1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_spirit_spell4.1]
execute if entity @s[tag=brown_wool.thunder_spirit_spell5] unless score @s brown_wool.thunder_spirit_spell1 matches 1.. run rotate @s facing entity @n[tag=brown_wool.thunder_spirit_spell5.1]

# 向前
execute unless entity @s[tag=brown_wool.thunder_spirit_spell0.0] if score @s brown_wool.thunder_spirit_spell1 matches 1.. run tp ^ ^ ^0.5
execute if entity @s[tag=brown_wool.thunder_spirit_spell1] if score @s brown_wool.thunder_spirit_spell1 matches 15.. at @s run rotate @s facing entity @n[type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0]
execute if entity @s[tag=brown_wool.thunder_spirit_spell2] if score @s brown_wool.thunder_spirit_spell1 matches 16.. at @s run rotate @s facing entity @n[type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0]
execute if entity @s[tag=brown_wool.thunder_spirit_spell3] if score @s brown_wool.thunder_spirit_spell1 matches 17.. at @s run rotate @s facing entity @n[type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0]
execute if entity @s[tag=brown_wool.thunder_spirit_spell4] if score @s brown_wool.thunder_spirit_spell1 matches 18.. at @s run rotate @s facing entity @n[type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0]
execute if entity @s[tag=brown_wool.thunder_spirit_spell5] if score @s brown_wool.thunder_spirit_spell1 matches 19.. at @s run rotate @s facing entity @n[type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0]

# 粒子
execute unless entity @s[tag=brown_wool.thunder_spirit_spell0.0] run particle dust{color:[0, 1, 0.84],scale:1.0} ^0.2 ^0.3 ^ 0 0 0 0.1 0 force @a[distance=..50]

# 碰到人加tag
execute if score @s brown_wool.thunder_spirit_spell1 matches 15.. if entity @e[distance=..1.5,type=!player,type=!marker,type=!block_display,type=!item_display,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0] run tag @s add brown_wool.thunder_spirit_spell0.00

# 傷害
execute if entity @s[tag=brown_wool.thunder_spirit_spell0.00] as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.thunder_spirit_spell0] run damage @s 10 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_spirit_spell0.00] run particle explosion ~ ~ ~ 0.2 0.2 0.2 0.1 20
execute if entity @s[tag=brown_wool.thunder_spirit_spell0.00] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit_spell0.00] run kill @s


# 消失
execute if score @s brown_wool.thunder_spirit_spell1 matches 100.. run kill @s
execute if entity @s[tag=brown_wool.thunder_spirit_spell0.0] if score @s brown_wool.thunder_spirit_spell1 matches 1.. run kill @s
scoreboard players add @s brown_wool.thunder_spirit_spell1 1


