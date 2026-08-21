function light_green:mob/boss/graud_golem/kill
function light_green:mob/boss/graud_golem/tp_door/kill
summon magma_cube ~ ~ ~ {Health:200,Tags:["light_green","light_green.mob","light_green.boss","light_green.boss.graud_golem","light_green.new.mob"],Size:0,attributes:[{id:scale,base:6},{id:"max_health",base:200}],NoAI:true,Silent:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Invulnerable:true,DeathLootTable:"",PersistenceRequired:true,CustomName:{"translate":"light_green:graud_golem"}}
execute rotated 0 0 run function animated_java:graud_golem/summon {args:{}}
scoreboard players set @n[tag=light_green.new.mob] light_green.team 1
scoreboard players reset @n[tag=light_green.new.mob] light_green.mob.ai
execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/not_summon/play
tag @n[tag=light_green.new.mob] remove light_green.new.mob