#
execute unless score @s pink.monster.guardian.block_cd matches 0.. run scoreboard players set @s pink.monster.guardian.block_cd 150
scoreboard players add @s[tag=!shield] pink.monster.guardian.block_cd 1

execute if score @s pink.monster.guardian.block_cd matches 200.. run function pink:monster/guardian/add_shield

# shield
execute if entity @s[tag=shield,predicate=pink:hurt] run function pink:monster/guardian/block

execute if predicate pink:effect/strength0 run particle angry_villager ~ ~1.5 ~ .2 .2 .2 0 1