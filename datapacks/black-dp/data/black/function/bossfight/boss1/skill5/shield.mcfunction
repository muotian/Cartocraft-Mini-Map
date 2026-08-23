attribute @n[tag=icebird.boss1] max_absorption modifier add black.ewe 1024 add_value
bossbar set icebird.boss1_shield max 400
bossbar set icebird.boss1_shield players @a
bossbar set icebird.boss1_shield visible true
execute store result bossbar icebird.boss1_shield value run data modify entity @n[tag=icebird.boss1] AbsorptionAmount set value 400f
playsound black:ring block @a ~ ~ ~ 2 1
title @a times 0s 2s 0s
title @a title {text:"§b!"}
title @a subtitle {translate:"black.b1s5_shield"}
