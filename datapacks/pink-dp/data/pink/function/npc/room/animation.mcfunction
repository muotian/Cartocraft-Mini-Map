#
execute rotated 0 0 run function animated_java:pink_npc/summon {args: {animation: 'animation1', start_animation: true}}
execute positioned as a7-0-0-0-0 run setblock ~11 ~67 ~-27 light[level=10]

gamemode spectator @a
execute as @a run spectate @n[tag=pink.camera] @s

title @a times 0 10 15
title @a title {"text":"a","font":"pink:animation"}

#
function pink:npc/room/marker
kill @n[tag=pink.camera2]
execute positioned as a7-0-0-0-0 run summon minecraft:item_display ~3.29 ~53.00 ~-24.39 {Tags:["pink.camera2"]}
execute as @n[tag=pink.camera2] at @s facing entity @n[tag=chest] eyes run tp @s ~ ~ ~ ~ ~
execute positioned as a7-0-0-0-0 run fill ~6 ~54 ~-19 ~10 ~50 ~-15 air
scoreboard players set $sound pink.npc.talk 1
