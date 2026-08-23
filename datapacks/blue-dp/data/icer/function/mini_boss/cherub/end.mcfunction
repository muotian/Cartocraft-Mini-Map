tag @s remove icer.executing_pyro
tag @s add icer.end_pyro

summon blaze ~ ~ ~ {active_effects:[{id:"glowing",duration:-1,show_particles:false}],CustomNameVisible:1b,CustomName:{"translate":"icer.cherub","color":"red","bold":true},Tags:["icer.cherub"],attributes:[{id:"max_health",base:200},{id:"scale",base:1.5}],Health:200,PersistenceRequired:1b,DeathLootTable:"",NoGravity:1b}

fill ~1 ~ ~ ~-1 ~ ~ air replace magma_block
fill ~ ~ ~1 ~ ~ ~-1 air replace magma_block
fill ~ ~1 ~ ~ ~ ~ air replace magma_block

playsound entity.generic.explode ambient @a ~ ~ ~
playsound entity.ender_dragon.ambient ambient @a ~ ~ ~
playsound block.anvil.land ambient @a ~ ~ ~

particle explosion ~ ~ ~ 0.1 0.1 0.1 0.1 5
particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
particle flame ~ ~ ~ 0.5 0.5 0.5 0.2 50 force