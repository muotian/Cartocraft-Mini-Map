data modify storage tools:restore_aj data set value {id:"",id_len:0,has_args:0b}

data modify storage tools:restore_aj tags set value []
data modify storage tools:restore_aj tags append from entity @s Tags[]

function tools:restore_aj/find_id
execute if data storage tools:restore_aj data{id:""} run return run tellraw @a {"text":"[AJ restorer] ",color:"red","extra":[{"text":"Can not find aj id in following tags: "},{"nbt":"Tags","entity":"@s"},{"text":" Position: "},{"nbt":"Pos","entity":"@s"}]}

data modify storage tools:restore_aj tags set value []
data modify storage tools:restore_aj tags append from entity @s Tags[]

execute store result storage tools:restore_aj data.has_args byte 1 run function tools:restore_aj/check_suffix with storage tools:restore_aj data

execute if data storage tools:restore_aj data{has_args:1b} run return run tellraw @a {"text":"[AJ restorer] ",color:"red","extra":[{"text":"Found an aj entity but with args, id: "},{"nbt":"data.id","storage":"tools:restore_aj"},{"text":" Position: "},{"nbt":"Pos","entity":"@s"}]}

function tools:restore_aj/update.macro with storage tools:restore_aj data
execute on vehicle run tag @s add tools.vehicle
kill @s

scoreboard players set @n[tag=aj.global.root] tools.aj_restored 1
ride @n[tag=aj.global.root] mount @n[tag=tools.vehicle]
tag @e[tag=tools.vehicle] remove tools.vehicle

tellraw @a {"text":"[AJ restorer] ","extra":[{"text":"Updated an aj entity, id: "},{"nbt":"data.id","storage":"tools:restore_aj"}]}
