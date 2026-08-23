
# 執行位置：同上
scoreboard players add @s brown_wool.phantom_lightning_blade1 1


execute if entity @s[tag=brown_wool.phantom_lightning_blade1] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^ ^0.5
execute if entity @s[tag=brown_wool.phantom_lightning_blade2] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^-0.25 ^0.5
execute if entity @s[tag=brown_wool.phantom_lightning_blade3] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^-0.5 ^

execute if entity @s[tag=brown_wool.phantom_lightning_blade6] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^ ^0.66
execute if entity @s[tag=brown_wool.phantom_lightning_blade7] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^-0.416 ^0.55
execute if entity @s[tag=brown_wool.phantom_lightning_blade8] if score @s brown_wool.phantom_lightning_blade1 matches 1.. run tp @s ^ ^-0.66 ^


execute if entity @s[tag=brown_wool.phantom_lightning_blade1] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 1 1 1 0.1 50
execute if entity @s[tag=brown_wool.phantom_lightning_blade1] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 1.5 1.0 1.5 0.1 30

execute if entity @s[tag=brown_wool.phantom_lightning_blade2] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 1 1 1 0.1 50
execute if entity @s[tag=brown_wool.phantom_lightning_blade2] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 1.5 1.0 1.5 0.1 30

execute if entity @s[tag=brown_wool.phantom_lightning_blade3] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 1 1 1 0.1 50
execute if entity @s[tag=brown_wool.phantom_lightning_blade3] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 1.5 1.0 1.5 0.1 30

execute if entity @s[tag=brown_wool.phantom_lightning_blade6] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 2 1 2 0.1 80
execute if entity @s[tag=brown_wool.phantom_lightning_blade6] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 2.5 1.0 2.5 0.1 60

execute if entity @s[tag=brown_wool.phantom_lightning_blade7] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 2 1 2 0.1 80
execute if entity @s[tag=brown_wool.phantom_lightning_blade7] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 2.5 1.0 2.5 0.1 60

execute if entity @s[tag=brown_wool.phantom_lightning_blade8] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle sweep_attack ~ ~ ~ 2 1 2 0.1 80
execute if entity @s[tag=brown_wool.phantom_lightning_blade8] if score @s brown_wool.phantom_lightning_blade1 matches 12 run particle dust{color:[0, 0, 0],scale:2.5} ~ ~1 ~ 2.5 1.0 2.5 0.1 60


execute if entity @s[tag=brown_wool.phantom_lightning_blade1] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..4.2] run damage @s 6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade1] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..10] run playsound entity.player.attack.sweep master @s

execute if entity @s[tag=brown_wool.phantom_lightning_blade2] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..4.2] run damage @s 6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade2] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..10] run playsound entity.player.attack.sweep master @s

execute if entity @s[tag=brown_wool.phantom_lightning_blade3] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..4.2] run damage @s 6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade3] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..10] run playsound entity.player.attack.sweep master @s

execute if entity @s[tag=brown_wool.phantom_lightning_blade6] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..6.2] run damage @s 7.5 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade6] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..12] run playsound entity.player.attack.sweep master @s

execute if entity @s[tag=brown_wool.phantom_lightning_blade7] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..6.2] run damage @s 7.5 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade7] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..12] run playsound entity.player.attack.sweep master @s

execute if entity @s[tag=brown_wool.phantom_lightning_blade8] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @e[type=!player,type=!item,tag=!brown_wool.phantom_lightning_blade0.00,distance=..6.2] run damage @s 7.5 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.phantom_lightning_blade8] if score @s brown_wool.phantom_lightning_blade1 matches 12 as @a[distance=..12] run playsound entity.player.attack.sweep master @s

execute if score @s brown_wool.phantom_lightning_blade1 matches 26.. run tp @s ~ ~-999 ~
execute if score @s brown_wool.phantom_lightning_blade1 matches 28.. run kill @s



