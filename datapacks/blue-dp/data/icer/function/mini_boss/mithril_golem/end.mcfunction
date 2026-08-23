tag @s remove icer.executing_wind
tag @s add icer.end_wind

summon iron_golem ~ ~ ~ {active_effects:[{id:"glowing",duration:-1,show_particles:false}],CustomNameVisible:1b,CustomName:{"translate":"icer.mithril_golem","color":"red","bold":true},Tags:["icer.mithril_golem"],attributes:[{id:"movement_speed",base:0.25},{id:"attack_damage",base:8},{id:"max_health",base:200}],Health:200,PersistenceRequired:1b,DeathLootTable:""}

fill ~1 ~ ~ ~-1 ~ ~ air replace prismarine_bricks
fill ~ ~ ~1 ~ ~ ~-1 air replace prismarine_bricks
fill ~ ~1 ~ ~ ~ ~ air replace prismarine_bricks

playsound entity.generic.explode ambient @a ~ ~ ~
playsound entity.ender_dragon.ambient ambient @a ~ ~ ~
playsound block.anvil.land ambient @a ~ ~ ~

particle explosion ~ ~ ~ 0.1 0.1 0.1 0.1 5
particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.2 50 force