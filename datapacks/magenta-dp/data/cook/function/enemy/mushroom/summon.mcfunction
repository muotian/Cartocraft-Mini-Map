#

summon husk ~ ~ ~ {IsBaby:true,CustomName:{translate:"magenta.entity.spore.name"},\
attributes:[{id:"max_health",base:6},{id:"attack_damage",base:3},{id:"movement_speed",base:0.24},{id:"armor",base:0}],\
Health:6,\
equipment:{head:{id:"moss_block",count:1}}, \
drop_chances:{head:0}, \
DeathLootTable:"", \
Tags:["MagentaSpore"]}

spreadplayers ~ ~ 2 3 false @e[tag=MagentaSpore,type=husk,limit=1,sort=nearest]

execute as @e[tag=MagentaSpore,type=husk,limit=1,sort=nearest] at @s run particle block{block_state:{Name:"moss_block"}} ~ ~ ~ 0.2 0.3 0.2 0.005 10 force @a
