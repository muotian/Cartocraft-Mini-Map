execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.cd
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.time
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.cast
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.random
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.pg
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.pg_cd
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.pg2
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.pg_random
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.skill_cd
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.skill_time
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.skill
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players reset @s brown_wool.xuan_ting_priest.skill_random
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.pg0]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast1.0]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast2]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast3]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=magma_cube, tag=brown_wool.xuan_ting_priest.cast4.1]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast4.2]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast5]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill1.2]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill2.0]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill3.0]
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run tag @s remove brown_wool.xuan_ting_priest.cast
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run tag @s remove brown_wool.xuan_ting_priest.pg
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run tag @s remove brown_wool.xuan_ting_priest.pg0
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run tag @s remove brown_wool.xuan_ting_priest.skill


execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run tp @s ~ ~1.5 ~
execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run rotate @s facing ~-1 ~1 ~

execute unless score @s brown_wool.xuan_ting_priest.switch matches 158.. run data modify entity @s Invulnerable set value true

execute if score @s brown_wool.xuan_ting_priest.switch matches 159 run data modify entity @s Invulnerable set value false

execute if score @s brown_wool.xuan_ting_priest.switch matches 20 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.switch1",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.switch matches 70 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.switch2",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.switch matches 120 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.switch3",color:"red"}]

execute if score @s brown_wool.xuan_ting_priest.switch matches 11 run summon allay ~ ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 12 run summon allay ~ ~-0.5 ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 13 run summon allay ~-6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 14 run summon allay ~ ~ ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 15 run summon allay ~6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 16 run summon allay ~ ~ ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 17 run summon allay ~-7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 18 run summon allay ~ ~-0.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 19 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 20 run summon allay ~ ~ ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 21 run summon allay ~-8 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 22 run summon allay ~ ~-0.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 23 run summon allay ~8 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 24 run summon allay ~ ~ ~4 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 25 run summon allay ~-4 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 27 run summon allay ~ ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 28 run summon allay ~ ~-0.5 ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 29 run summon allay ~-6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 30 run summon allay ~ ~ ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 31 run summon allay ~6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 32 run summon allay ~ ~ ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 33 run summon allay ~-7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 34 run summon allay ~ ~-0.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 35 run summon allay ~ ~-0.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}
execute if score @s brown_wool.xuan_ting_priest.switch matches 36 run summon allay ~8 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.switch2"]}

execute if score @s brown_wool.xuan_ting_priest.switch matches 60 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 62 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 64 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 66 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 68 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 70 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 72 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 74 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 76 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 78 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 80 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 82 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 84 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 86 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 88 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 90 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 92 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 94 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 96 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 98 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 100 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 102 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 104 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 106 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 108 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2,limit=1]
execute if score @s brown_wool.xuan_ting_priest.switch matches 110 run kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2]



execute if score @s brown_wool.xuan_ting_priest.switch matches 159 as @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2] run kill @s

execute as @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2] at @s facing entity @e[type=stray, tag=brown_wool.xuan_ting_priest,limit=1] feet run function brown_wool:entity/boss/xuan_ting_priest/switch1

execute if score @s brown_wool.xuan_ting_priest.switch matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.switch matches 40 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.switch matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.switch matches 80 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.switch matches 100 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.switch matches 120 at @s run summon lightning_bolt ~ ~-200 ~

execute if score @s brown_wool.xuan_ting_priest.switch matches 159 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run tp @s ~ ~-0.5 ~

execute if score @s brown_wool.xuan_ting_priest.switch matches 159 as @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] at @s run function brown_wool:entity/boss/xuan_ting_priest/terrain0

execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run effect give @s glowing 1 255 true


execute unless score @s brown_wool.xuan_ting_priest.switch matches 160.. run scoreboard players add @s brown_wool.xuan_ting_priest.switch 1





