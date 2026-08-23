execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.cd
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.time
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.cast
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.random
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.pg
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.pg_cd
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.pg2
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.pg_random
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.skill_cd
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.skill_time
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.skill
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players reset @s brown_wool.thunder_spirit.skill_random
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast1.0]
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast2.0]
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run kill @e[type=block_display, tag=brown_wool.thunder_spirit.cast3.0]
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run kill @e[type=block_display, tag=brown_wool.thunder_spirit.pg0]
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run tag @s remove brown_wool.thunder_spirit.cast
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run tag @s remove brown_wool.thunder_spirit.pg
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run tag @s remove brown_wool.thunder_spirit.pg0
execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run tag @s remove brown_wool.thunder_spirit.skill

execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run kill @e[tag=brown_wool.thunder_spirit.biological0]

execute unless score @s brown_wool.thunder_spirit.switch matches 200.. as @e[tag=brown_wool.thunder_spirit.call1] run scoreboard players reset @s brown_wool.thunder_spirit.call1

execute if score @s brown_wool.thunder_spirit.switch matches 20 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.switch1",color:"red"}]
execute if score @s brown_wool.thunder_spirit.switch matches 100 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.switch2",color:"red"}]
execute if score @s brown_wool.thunder_spirit.switch matches 180 run tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.switch3",color:"red"}]

execute if score @s brown_wool.thunder_spirit.switch matches 20 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 40 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 60 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 80 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 100 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 120 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 140 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 160 at @s run summon lightning_bolt ~ ~-300 ~
execute if score @s brown_wool.thunder_spirit.switch matches 180 at @s run summon lightning_bolt ~ ~-300 ~


execute if score @s brown_wool.thunder_spirit.switch matches 80 at @n[tag=brown_wool.thunder_spirit.terrain] run summon minecraft:block_display ~9 ~-0.5 ~ {Tags:["brown_wool.thunder_spirit.call2","brown_wool.thunder_spirit.call0"],block_state: {Name: "minecraft:spawner"}, transformation: {left_rotation: [0.5000002f, -0.49999976f, 0.5000001f, 0.49999985f], right_rotation: [-0.14644663f, 0.3535534f, -0.3535534f, 0.85355335f], scale: [0.62499994f, 0.625f, 2.1249993f], translation: [3.725293E-8f, -0.31119904f, -0.5334708f]},Rotation:[0,0],Glowing:1b}
execute if score @s brown_wool.thunder_spirit.switch matches 80 at @n[tag=brown_wool.thunder_spirit.terrain] run summon minecraft:block_display ~-9 ~-0.5 ~ {Tags:["brown_wool.thunder_spirit.call2","brown_wool.thunder_spirit.call0"],block_state: {Name: "minecraft:spawner"}, transformation: {left_rotation: [0.5000002f, -0.49999976f, 0.5000001f, 0.49999985f], right_rotation: [-0.14644663f, 0.3535534f, -0.3535534f, 0.85355335f], scale: [0.62499994f, 0.625f, 2.1249993f], translation: [3.725293E-8f, -0.31119904f, -0.5334708f]},Rotation:[180,0],Glowing:1b}


execute if score @s brown_wool.thunder_spirit.switch matches 1 run stopsound @a * brown_wool:custom.miguel_johnson_good_day_to_die
execute if score @s brown_wool.thunder_spirit.switch matches 1 run scoreboard players reset @a brown_wool.thunder_spirit.playsound
execute if score @s brown_wool.thunder_spirit.switch matches 1 run tag @a[tag=brown_wool.thunder_spirit.player] add brown_wool.thunder_spirit.player2
execute if score @s brown_wool.thunder_spirit.switch matches 1 run playsound brown_wool:custom.alex_productions_elite record @a[tag=brown_wool.thunder_spirit.player]
execute if score @s brown_wool.thunder_spirit.switch matches 1 run scoreboard players set @a[tag=brown_wool.thunder_spirit.player] brown_wool.thunder_spirit.playsound2 1978


execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run effect give @s glowing 1 255 true


execute unless score @s brown_wool.thunder_spirit.switch matches 200.. run scoreboard players add @s brown_wool.thunder_spirit.switch 1





