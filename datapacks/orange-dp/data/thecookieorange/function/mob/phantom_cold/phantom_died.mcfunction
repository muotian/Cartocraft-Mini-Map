execute if entity @a[distance=..4] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 0.8

execute if entity @a[distance=..4] run effect give @a[distance=..4] minecraft:slowness 4 0 true

execute if entity @a[distance=..4] run execute as @a[distance=..3] run damage @s 2 minecraft:freeze

execute if entity @a[distance=..3] run summon silverfish ~ ~ ~ {Glowing:true, Team:"orange_falling_creeper", Silent:1b,Health:10f,Tags:["orange.cold.wind.silverfish"],CustomName:{"bold":true,"color":"white","shadow_color":-8539649,"translate":"entity.cookieorange_res.orange_cold_wind_silverfish"},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"item.cookieorange_res.solid_wind"}}}},drop_chances:{offhand:0.30},active_effects:[{id:"minecraft:wither",amplifier:0,duration:6000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:6000,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:attack_knockback",base:1},{id:"minecraft:follow_range",base:20},{id:"minecraft:tempt_range",base:20}]}

kill @s