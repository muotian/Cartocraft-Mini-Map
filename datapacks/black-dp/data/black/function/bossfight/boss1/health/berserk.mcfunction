team join icebird.red @n[tag=icebird.boss1]
effect give @n[tag=icebird.boss1] glowing infinite 0 true
attribute @n[tag=icebird.boss1] attack_damage modifier add black.berserk 2 add_multiplied_total
attribute @n[tag=icebird.boss1] scale modifier add black.berserk2 2 add_multiplied_total
execute at @n[tag=icebird.boss1] run playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 2 1.5
title @a times 0s 1.5s 0s
title @a title {text:"§4!!!"}
title @a subtitle {translate:"black.b1_berserk"}