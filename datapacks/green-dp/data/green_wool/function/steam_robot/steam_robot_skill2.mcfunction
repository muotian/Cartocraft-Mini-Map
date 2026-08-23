playsound green_wool:shoot2 block @a ~ ~ ~ 0.7 0.1
playsound minecraft:block.fire.extinguish block @a ~ ~ ~
particle cloud ^ ^1.5 ^2 0 0 0 0.1 20
particle cloud ^ ^1.5 ^1 0 0 0 0.1 20
execute positioned ^ ^1.5 ^2 as @a[distance=..2] run damage @s 15 campfire
data remove entity @s NoAI
scoreboard players reset @s green_wool.mobskill
scoreboard players reset @s green_wool.mobskill2