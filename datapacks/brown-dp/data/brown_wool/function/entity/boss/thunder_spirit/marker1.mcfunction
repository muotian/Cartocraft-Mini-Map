

execute unless score @s brown_wool.thunder_spirit2.narrative_marker matches 331 run scoreboard players add @s brown_wool.thunder_spirit2.narrative_marker 1

execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 60 at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 250
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 60 at @s as @a[distance=..15] run playsound entity.firework_rocket.launch player
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 60 at @s as @a[distance=..15] run playsound entity.firework_rocket.twinkle_far player
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 60 at @s run summon allay ~ ~0.2 ~ {Tags:["brown_wool.thunder_spirit2.narrative"],NoAI:true,Invulnerable:true,PersistenceRequired:true,attributes:[{id:scale,base:1.5}],Rotation:[180,0]}
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 60 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker1",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 110 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker2",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 160 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker3",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 180 run particle gust ~ ~-0.75 ~ 0.1 0.1 0.1 0.1 10
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 180 run kill @e[type=block_display, tag=brown_wool.thunder_spirit.brown_wool]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 210 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker4",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 260 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker5",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 310 run tellraw @a [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit2.narrative_marker6",color:"aqua"}]
execute if score @s brown_wool.thunder_spirit2.narrative_marker matches 330 run function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon1

execute if entity @s[tag=brown_wool.thunder_spirit2.narrative_marker2] at @s run function brown_wool:entity/boss/thunder_spirit/marker2
