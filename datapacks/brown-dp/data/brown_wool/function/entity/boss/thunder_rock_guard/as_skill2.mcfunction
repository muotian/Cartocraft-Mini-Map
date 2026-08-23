


scoreboard players add @s brown_wool.thunder_rock_guard.skill2 1


execute if score @s brown_wool.thunder_rock_guard.skill2 matches 1..20 run tp @s ^ ^0.1 ^
execute if score @s brown_wool.thunder_rock_guard.skill2 matches 1..20 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunder_rock_guard.skill2 matches 1..20 as @a[distance=..6] run playsound block.grass.hit player

execute if score @s brown_wool.thunder_rock_guard.skill2 matches 25.. if block ^ ^ ^0.7 air run tp @s ^ ^ ^0.7
execute if score @s brown_wool.thunder_rock_guard.skill2 matches 25.. unless block ^ ^ ^0.7 air store result score @s brown_wool.thunder_rock_guard.skill2_random run random value 1..7

execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 1 run rotate @s ~112.5 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 2 run rotate @s ~135 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 3 run rotate @s ~157.5 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 4 run rotate @s ~180 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 5 run rotate @s ~202.5 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 6 run rotate @s ~225 ~
execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 7 run rotate @s ~247.5 ~

execute if entity @s[tag=brown_wool.thunder_rock_guard.skill2.1] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 1 2 true
execute if entity @s[tag=brown_wool.thunder_rock_guard.skill2.1] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run damage @s 6 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.thunder_rock_guard.skill2.2] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run damage @s 14 brown_wool:in_fire
execute if entity @s[tag=brown_wool.thunder_rock_guard.skill2.3] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run damage @s 10 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.thunder_rock_guard.skill2.3] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 1 0 true



execute if score @s brown_wool.thunder_rock_guard.skill2 matches 241..260 run tp @s ^ ^-0.1 ^
execute if score @s brown_wool.thunder_rock_guard.skill2 matches 241..260 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunder_rock_guard.skill2 matches 241..260 as @a[distance=..6] run playsound block.grass.hit player

execute if score @s brown_wool.thunder_rock_guard.skill2_random matches 1.. run scoreboard players reset @s brown_wool.thunder_rock_guard.skill2_random

execute if score @s brown_wool.thunder_rock_guard.skill2 matches 260.. run kill @s




