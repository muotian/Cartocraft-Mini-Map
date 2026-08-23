kill @n[tag = red_wool.boss]
kill @e[tag = red_wool.boss.pet]
kill @e[tag = red_wool.vex]

fill -40 52 61 -38 54 61 air
fill -40 52 67 -38 54 67 air

bossbar set minecraft:red_wool.boss visible false

bossbar set minecraft:red_wool.boss.creeper visible false

tellraw @a {translate:"red_wool.kill_boss", color : gold}
playsound ui.toast.challenge_complete block @a ~ ~ ~ 1.0 1.0 1.0

stopsound @a music