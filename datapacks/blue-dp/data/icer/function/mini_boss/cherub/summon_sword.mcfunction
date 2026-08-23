scoreboard players add @s icer.pyrosword.time 1

execute if score @s icer.pyrosword.time matches 200 run summon zombie ~ ~ ~ {CustomName:{"translate":"icer.pyrosword","color":"red","bold":true},active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"glowing",duration:-1,show_particles:false}],equipment:{mainhand:{id:"iron_sword"}},Tags:["icer.pyrosword"],DeathLootTable:"",attributes:[{id:"max_health",base:30}],Health:30}

execute if score @s icer.pyrosword.time matches 170 run playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 0.8 2 0.8

execute if score @s icer.pyrosword.time matches 200 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~

execute if score @s icer.pyrosword.time matches 250 run scoreboard players reset @s icer.pyrosword.time