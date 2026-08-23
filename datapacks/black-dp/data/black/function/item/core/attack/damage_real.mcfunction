advancement revoke @s only black:realcore_attack
tag @s add black.real_this

execute as @e[type=#minecraft:hostile,nbt={HurtTime:10s},distance=0..10] run function black:item/core/attack/real_ini2
execute as @e[type=#minecraft:hostile,tag=black.real_attacked] at @s run function black:item/core/attack/real_ini3

tag @e remove black.real_attacked
tag @s remove black.real_this
