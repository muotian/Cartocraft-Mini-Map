#
kill @s 

#
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"summon_bug",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"clone",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"devour",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"endermite",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"guardian",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"orderless",summon:"summon"}}]}
summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["pink.monster.b","pink.shulker.die"],Passengers:[{id:"marker",Tags:["pink.monster.b"],data:{name:"tp_bug",summon:"summon"}}]}

kill @e[tag=pink.shulker.die,limit=5,sort=random]

#
particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0.5 0.1 10

playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 1 1
