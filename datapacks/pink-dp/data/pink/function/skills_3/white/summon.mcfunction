#
#summon marker ~ ~ ~ {Tags:["pink.white.skill3.marker"]}
execute rotated 0 0 run function animated_java:pink_white3/summon {args: {animation: '1', start_animation: true}}

particle minecraft:end_rod ~ ~ ~ 2 0.5 2 0.4 90

scoreboard players remove @s pink.mana_v 6
