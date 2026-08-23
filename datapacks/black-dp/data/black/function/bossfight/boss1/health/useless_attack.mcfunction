execute at @n[tag=icebird.boss1] run particle minecraft:end_rod ~ ~1 ~ 0.3 0.2 0.3 0.1 10 force
execute at @n[tag=icebird.boss1] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute at @n[tag=icebird.boss1] run playsound minecraft:block.anvil.place block @a[distance=..30] ~ ~1 ~ 0.8 2 0.8



tellraw @a {translate:"black.boss1_useless"}

data modify entity @n[tag=icebird.boss1] Health set value 1024f
function black:bossfight/boss1/health/get_hpmax
data remove storage black:temp dmg