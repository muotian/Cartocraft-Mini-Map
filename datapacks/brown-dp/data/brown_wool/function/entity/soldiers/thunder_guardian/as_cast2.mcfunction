# 執行者：雷紋衛士技能2
# 執行位置：同上

# 增加計時器分數
execute unless score @s brown_wool.thunder_guardian.cast2 matches 1.. run rotate @s facing entity @p
scoreboard players add @s brown_wool.thunder_guardian.cast2 1

# 產生粒子效果
particle dust{color:[0, 1, 1],scale:1.0} ^ ^0.8 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 1, 1],scale:1.0} ^ ^1.3 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 1, 1],scale:1.5} ^ ^1.8 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.88, 0, 1],scale:1.0} ^0.2 ^0.3 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.88, 0, 1],scale:1.0} ^-0.2 ^0.3 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.88, 0, 1],scale:1.0} ^0.3 ^1 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.88, 0, 1],scale:1.0} ^-0.3 ^1 ^ 0 0 0 0.1 0 force @a[distance=..50]

# 效果
effect give @s invisibility 1 0 true
effect give @s resistance 1 5 true
execute if items entity @s armor.chest diamond_chestplate run item replace entity @s armor.chest with air
execute if items entity @s armor.head diamond_helmet run item replace entity @s armor.head with air
execute if items entity @s weapon.mainhand diamond_sword run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with air

# 衝鋒
execute rotated ~ 0 if block ^ ^ ^0.35 air run tp @s ^ ^ ^0.35
execute rotated ~ 0 unless block ^ ^ ^0.35 air run scoreboard players set @s brown_wool.thunder_guardian.cast2 20

# 傷害
execute as @a[distance=..1.5] run damage @s 10 brown_wool:player_attack by @n[tag=brown_wool.thunder_guardian]

# 重置記分板
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run tag @s remove brown_wool.thunder_guardian.cast2
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run effect clear @s invisibility
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run effect clear @s resistance
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:eye,material:amethyst},attribute_modifiers=[{type:armor,amount:0,operation:add_value,id:"1766046898431"}]]
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run item replace entity @s armor.head with diamond_helmet[trim={pattern:silence,material:amethyst},attribute_modifiers=[{type:armor,amount:0,operation:add_value,id:"1766046898431"}]]
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run item replace entity @s weapon.mainhand with diamond_sword[enchantments={sharpness:5}]
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run attribute @s knockback_resistance base reset
execute if score @s brown_wool.thunder_guardian.cast2 matches 20.. run data modify entity @s NoAI set value false
scoreboard players reset @s[scores={brown_wool.thunder_guardian.cast2=20..}] brown_wool.thunder_guardian.cast2


