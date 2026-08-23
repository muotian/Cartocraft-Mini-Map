scoreboard players add @s icer.wind_guardian.time 1
execute if score @s icer.wind_guardian.time matches 100 run summon guardian ^-5 ^2 ^ {CustomName:{"translate":"icer.wind_guardian","color":"red","bold":true},Health:0.5,NoGravity:1b,Tags:["icer.wind_guardian"],DeathLootTable:"",active_effects:[{id:"glowing",duration:-1,show_particles:false}],attributes:[{id:"attack_damage",base:7}]}
execute if score @s icer.wind_guardian.time matches 100 run summon guardian ^5 ^2 ^ {CustomName:{"translate":"icer.wind_guardian","color":"red","bold":true},Health:0.5,NoGravity:1b,Tags:["icer.wind_guardian"],DeathLootTable:"",active_effects:[{id:"glowing",duration:-1,show_particles:false}],attributes:[{id:"attack_damage",base:7}]}

execute if score @s icer.wind_guardian.time matches 65 run playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 0.8 2 0.8
execute if score @s icer.wind_guardian.time matches 66 run playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 0.8 2 0.8

execute if score @s icer.wind_guardian.time matches 98 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~

execute if score @s icer.wind_guardian.time matches 150 run scoreboard players reset @s icer.wind_guardian.time