advancement revoke @s only black:fakecore_attack
tag @s add black.fake_this

execute as @e[type=#minecraft:hostile,nbt={HurtTime:10s},distance=0..10] run function black:item/core/attack/fake_ini2
execute as @e[type=#minecraft:hostile,tag=black.fake_attacked] at @s run function black:item/core/attack/fake_ini3

tag @e remove black.fake_attacked
tag @s remove black.fake_this
