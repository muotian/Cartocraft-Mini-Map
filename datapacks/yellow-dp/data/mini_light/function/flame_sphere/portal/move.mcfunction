

execute if score @s portal matches 0..36 run tp @s ^.05 ^ ^
execute if score @s portal matches 37..93 run tp @s ^ ^.05 ^
execute if score @s portal matches 94..130 run tp @s ^-.05 ^ ^
execute if score @s portal matches 131..187 run tp @s ^ ^-.05 ^

scoreboard players add @s portal 1

scoreboard players set @s[scores={portal=188..}] portal 0


#
particle minecraft:end_rod ~ ~ ~ .1 .1 .1 .015 2
particle minecraft:wax_off ~ ~ ~ .11 .11 .11 0 1

