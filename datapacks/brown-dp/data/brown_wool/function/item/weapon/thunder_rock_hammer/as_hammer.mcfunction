# 執行者：雷岩重錘
# 執行位置：同上



#

execute if entity @s[tag=brown_wool.thunder_rock_hammer1] unless score @s brown_wool.thunder_rock_hammer1 matches 1.. run summon minecraft:item_display ~ ~3 ~ {Tags:["brown_wool.thunder_rock_hammer3","brown_wool.thunder_rock_hammer0"],item: {count: 1, id: "minecraft:mace"}, transformation: {left_rotation: [0.0f, 0.0f, 0.9238795f, 0.38268346f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 2.0f], translation: [0.0f, 0.0f, 0.0f]},Glowing:1b}
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] unless score @s brown_wool.thunder_rock_hammer1 matches 1.. run summon minecraft:item_display ~ ~3 ~ {Tags:["brown_wool.thunder_rock_hammer3","brown_wool.thunder_rock_hammer0"],item: {count: 1, id: "minecraft:mace"}, transformation: {left_rotation: [0.0f, 0.0f, 0.9238795f, 0.38268346f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 2.0f], translation: [0.0f, 0.0f, 0.0f]},Glowing:1b}

scoreboard players add @s brown_wool.thunder_rock_hammer1 1


execute if entity @s[tag=brown_wool.thunder_rock_hammer1] run function brown_wool:item/weapon/thunder_rock_hammer/particle1
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] run function brown_wool:item/weapon/thunder_rock_hammer/particle2


execute if entity @s[tag=brown_wool.thunder_rock_hammer3] run tp @s ~ ~-0.32 ~

execute if entity @s[tag=brown_wool.thunder_rock_hammer1] if score @s brown_wool.thunder_rock_hammer1 matches 10.. run particle crit ~ ~ ~ 0.75 0.3 0.75 0.1 25
execute if entity @s[tag=brown_wool.thunder_rock_hammer1] if score @s brown_wool.thunder_rock_hammer1 matches 10.. run particle gust ~ ~ ~ 0.75 0.3 0.75 0.1 25
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] if score @s brown_wool.thunder_rock_hammer1 matches 10.. run particle crit ~ ~ ~ 1 0.3 1 0.1 40
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] if score @s brown_wool.thunder_rock_hammer1 matches 10.. run particle gust ~ ~ ~ 1 0.3 1 0.1 40

execute if entity @s[tag=brown_wool.thunder_rock_hammer1] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @a[distance=..8] run playsound item.mace.smash_air player
execute if entity @s[tag=brown_wool.thunder_rock_hammer1] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @a[distance=..8] run playsound entity.player.attack.crit player
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @a[distance=..8] run playsound item.mace.smash_air player
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @a[distance=..8] run playsound entity.player.attack.crit player

execute if entity @s[tag=brown_wool.thunder_rock_hammer1] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @e[distance=..2.2,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 15 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_rock_hammer2] if score @s brown_wool.thunder_rock_hammer1 matches 10.. at @s as @e[distance=..3.2,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 20 brown_wool:bypasses_cooldown2
execute if score @s brown_wool.thunder_rock_hammer1 matches 10.. run kill @s


