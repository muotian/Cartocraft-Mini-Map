## (exe) mob

tag @s add white.hostile

data merge entity @s {DeathLootTable:"white:on_death"}
execute unless data entity @s drop_chances run data merge entity @s {drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:0f,offhand:0f,body:0f,saddle:0f}}
data modify entity @s attributes[{id:max_health}].base set from storage white:mob summon.hpmax
data modify entity @s Health set from storage white:mob summon.hpmax

execute store result score @s white.mob.id run scoreboard players add #index white.mob.id 1
execute if data storage white:mob summon.cd run function white:sys/mob/init/cd with storage white:mob summon
data modify entity @s data.white set from storage white:mob summon

data remove storage white:mob summon
tag @s remove summon