tag @s add interrupt_crit_hit

execute as @e[type=#minecraft:hostile,nbt={HurtTime:10s},distance=0..10,tag=icebird.spell_casting,tag=!interrupt.immune] run function black:spell/interrupt/ini3
execute as @e[type=#minecraft:hostile,tag=interrupt_attacked] at @s run function black:spell/interrupt/ini4



