execute positioned ~ ~1.5 ~ run function green_wool:boltgun/boltgun_shoot
playsound green_wool:shoot block @s ~ ~ ~
scoreboard players remove @s green_wool.boltgun_bullet 1
tp @s ~ ~ ~ ~ ~-0.5