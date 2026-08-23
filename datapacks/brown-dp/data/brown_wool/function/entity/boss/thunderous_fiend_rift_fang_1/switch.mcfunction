scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.time
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.cast
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.random
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg_cd
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg2
scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.pg_random
kill @e[tag=brown_wool.thunderous_fiend_rift_fang_1.cast3.0]
kill @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast1.0]
kill @e[type=item_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast5]
tag @s remove brown_wool.thunderous_fiend_rift_fang.cast
tag @s remove brown_wool.thunderous_fiend_rift_fang.pg
tag @s remove brown_wool.thunderous_fiend_rift_fang.pg0
rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 60 at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 20 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.switch1",color:"red"}]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 100 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.switch2",color:"red"}]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 180 run tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.switch3",color:"red"}]


execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 40 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 80 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 100 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 120 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 140 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 160 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 180 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 200 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 220 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240 at @s run summon lightning_bolt ~ ~-200 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 81..120 at @s run tp @s ~ ~0.05 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 125 at @s run summon minecraft:block_display ~-17.5 ~9 ~9.5 {Tags:["brown_wool.thunderous_fiend_rift_fang.switch0.0"],block_state: {Name: "minecraft:nether_portal", Properties: {axis: "x"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.38268346f, 0.9238795f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 5.0f, 1.0E-4f], translation: [3.5762787E-7f, -3.535534f, -5.0E-5f]},Glowing:1b,Rotation:[180,0]}

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 145 at @e[tag=brown_wool.thunderous_fiend_rift_fang.switch0.0,limit=1] run summon skeleton_horse ~ ~-0.5 ~ {Tags:["brown_wool.thunderous_fiend_rift_fang.horse0.0"],NoAI:true,attributes:[{id:max_health,base:200},{id:armor,base:20}],equipment:{body:{id:netherite_horse_armor}},Health:999,DeathLootTable:"entities/villager",HurtTime:1,Rotation:[180,0],drop_chances:{body:0}}

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] run effect give @s resistance 1 255 true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] run effect give @s glowing 1 255 true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1.. run effect give @s resistance 1 255 true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1.. run effect give @s glowing 1 255 true

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 145..228 as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] at @s run particle dust{color:[0.84, 0.39, 0.97],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 20
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 145..195 as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] at @s run tp @s ^ ^ ^2 ~5 ~0.13

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 196..220 as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] at @s facing entity @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0,limit=1] feet run tp @s ^ ^ ^1.5 ~ ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 221 run ride @s mount @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1]
scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.switch 1

execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1 run stopsound @a * brown_wool:custom.keys_of_moon_thunder_unison
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1 run scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1 run tag @a[tag=brown_wool.thunderous_fiend_rift_fang.player] add brown_wool.thunderous_fiend_rift_fang.player2
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1 run playsound brown_wool:custom.makai_symphony_endless_storm record @a[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 1 run scoreboard players set @a[tag=brown_wool.thunderous_fiend_rift_fang.player] brown_wool.thunderous_fiend_rift_fang.playsound2 2838


execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run kill @e[tag=brown_wool.thunderous_fiend_rift_fang.switch0.0]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run tag @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] add brown_wool.thunderous_fiend_rift_fang.horse
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run tag @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse0.0,limit=1] remove brown_wool.thunderous_fiend_rift_fang.horse0.0
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run data modify entity @s NoAI set value false
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run effect give @s instant_damage 1 28 true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run data modify entity @s NoAI set value true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run bossbar set brown_wool.thunderous_fiend_rift_fang_1 players
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run bossbar set brown_wool.thunderous_fiend_rift_fang_1 visible false
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run bossbar set brown_wool.thunderous_fiend_rift_fang_2 players @a[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run bossbar set brown_wool.thunderous_fiend_rift_fang_2 visible true
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @n[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. as @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/terrain0
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run tag @s add brown_wool.thunderous_fiend_rift_fang_2
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run tag @s remove brown_wool.thunderous_fiend_rift_fang_1
execute if score @s brown_wool.thunderous_fiend_rift_fang.switch matches 240.. run tag @s remove brown_wool.thunderous_fiend_rift_fang.switch




