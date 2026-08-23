schedule clear black:bossfight/boss1/death
title @a title {"text": "§4§l💀"}
tellraw @a {"translate": "black.boss1.failed"}
playsound minecraft:entity.wither.death block @a ~ ~ ~ 100 2
schedule function black:bossfight/boss1/reset 2s