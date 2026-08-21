playsound block.fire.extinguish player @a ~ ~ ~ 1 1
playsound block.amethyst_cluster.break player @a ~ ~ ~ 1 1

effect give @e[distance=..10] glowing 10 0

function mini_light:weapons/amethyst/burst {target:"@e[type=#mini_light:monster, type=!player, sort=nearest, limit=6, distance=..10]"}