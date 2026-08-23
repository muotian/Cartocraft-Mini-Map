


execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] unless score @s brown_wool.thunder_spirit.cast2 matches 1.. run summon minecraft:block_display ~ ~5 ~ {Tags:["brown_wool.thunder_spirit.cast2.2","brown_wool.thunder_spirit.cast2.0"],block_state: {Name: "minecraft:chorus_flower", Properties: {age: "0"}}, transformation: {left_rotation: [1.0f, 0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 0.5f, 3.0f], translation: [-1.5f, 0.25f, 1.5f]},Glowing:1b}


scoreboard players add @s brown_wool.thunder_spirit.cast2 1


execute if entity @s[tag=brown_wool.thunder_spirit.cast2.2] at @n[type=block_display,tag=brown_wool.thunder_spirit.cast2.1] run tp @s ^ ^5 ^ ~ ~
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.3] at @n[type=block_display,tag=brown_wool.thunder_spirit.cast2.1] run tp @s ^ ^ ^ ~ ~

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 1..40 rotated ~ 0 if block ~ ~-0.075 ~ air run tp @s ~ ~-0.075 ~

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 1..40 rotated ~ 0 run function brown_wool:entity/boss/thunder_spirit/cast_particle1.1

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] run rotate @s ~4.5 ~

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 41 rotated ~ 0 run summon minecraft:block_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.cast2.3","brown_wool.thunder_spirit.cast2.0"],block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 5.0f, 1.5f], translation: [-0.75f, 0f, -0.75f]},Glowing:1b}

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.3] positioned ~-0.75 ~ ~-0.75 as @a[dx=0.5, dy=4, dz=0.5 ,tag=brown_wool.thunder_spirit.player] run damage @s 16 brown_wool:lightning_bolt

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 41.. facing entity @p[tag=brown_wool.thunder_spirit.player] feet rotated ~ 0 run tp @s ^ ^ ^0.2


execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 200.. run kill @s
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.2] if score @s brown_wool.thunder_spirit.cast2 matches 200.. run kill @s
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.3] if score @s brown_wool.thunder_spirit.cast2 matches 160.. run kill @s

execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 5 as @a[distance=..8,tag=brown_wool.thunder_spirit.player] at @s run playsound entity.warden.sonic_boom player @s
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 15 as @a[distance=..8,tag=brown_wool.thunder_spirit.player] at @s run playsound entity.warden.sonic_boom player @s
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 25 as @a[distance=..8,tag=brown_wool.thunder_spirit.player] at @s run playsound entity.warden.sonic_boom player @s
execute if entity @s[tag=brown_wool.thunder_spirit.cast2.1] if score @s brown_wool.thunder_spirit.cast2 matches 35 as @a[distance=..8,tag=brown_wool.thunder_spirit.player] at @s run playsound entity.warden.sonic_boom player @s



