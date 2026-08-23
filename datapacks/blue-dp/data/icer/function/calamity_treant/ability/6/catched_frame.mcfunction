scoreboard players add @s icer.calamity_treant.ability6_catch.frame 1

execute if score @s icer.calamity_treant.ability6_catch.frame matches 1 run summon pig ^ ^-0.5 ^2 {attributes:[{id:"max_health",base:1}],Health:1,DeathLootTable:"",Tags:["icer.ability6_ride"],Silent:1b,Invulnerable:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:255,show_particles:false}]}
execute if score @s icer.calamity_treant.ability6_catch.frame matches ..70 run ride @p[tag=icer.catched] mount @n[tag=icer.ability6_ride]

execute if score @s icer.calamity_treant.ability6_catch.frame matches ..10 as @n[tag=icer.ability6_ride] at @s facing entity @n[tag=icer.calamity_treant] feet run tp @s ^ ^0.04 ^0.08
execute if score @s icer.calamity_treant.ability6_catch.frame matches ..13 as @n[tag=icer.ability6_ride] at @s facing entity @n[tag=icer.calamity_treant] feet run tp @s ^ ^-0.03 ^
execute if score @s icer.calamity_treant.ability6_catch.frame matches 14..19 as @n[tag=icer.ability6_ride] at @s facing entity @n[tag=icer.calamity_treant] feet run tp @s ^ ^-0.1 ^

execute if score @s icer.calamity_treant.ability6_catch.frame matches 14 as @p[tag=icer.catched] run function icer:calamity_treant/ability/6/first_hit
execute if score @s icer.calamity_treant.ability6_catch.frame matches 16 as @n[tag=icer.ability6_ride] at @s run tp @s ~ ~0.5 ~

execute if score @s icer.calamity_treant.ability6_catch.frame matches 20..25 as @n[tag=icer.ability6_ride] at @s facing entity @n[tag=icer.calamity_treant] feet run tp @s ^-0.1 ^ ^
execute if score @s icer.calamity_treant.ability6_catch.frame matches 35 run tp @n[tag=icer.ability6_ride] ^ ^0.5 ^1
execute if score @s icer.calamity_treant.ability6_catch.frame matches 36 as @n[tag=icer.ability6_ride] run data merge entity @s {Motion:[0.0f,5.0f,0.0f]}
execute if score @s icer.calamity_treant.ability6_catch.frame matches 37..60 as @n[tag=icer.ability6_ride] run data merge entity @s {Motion:[0.0f,0.15f,0.0f]}
execute if score @s icer.calamity_treant.ability6_catch.frame matches 68..69 as @n[tag=icer.ability6_ride] run data merge entity @s {Motion:[0.0f,-5.0f,0.0f]}

execute if score @s icer.calamity_treant.ability6_catch.frame matches 70 as @p[tag=icer.catched] run function icer:calamity_treant/ability/6/second_hit

execute if score @s icer.calamity_treant.ability6_catch.frame matches 68 as @p[tag=icer.catched] at @s run function icer:calamity_treant/ability/6/particle_circle
execute if score @s icer.calamity_treant.ability6_catch.frame matches 69 as @p[tag=icer.catched] at @s run function icer:calamity_treant/ability/6/particle_circle2
execute if score @s icer.calamity_treant.ability6_catch.frame matches 70 as @p[tag=icer.catched] at @s run function icer:calamity_treant/ability/6/particle_circle3


execute if score @s icer.calamity_treant.ability6_catch.frame matches 71.. run ride @p[tag=icer.catched] dismount
execute if score @s icer.calamity_treant.ability6_catch.frame matches 85.. run function icer:calamity_treant/ability/6/reset_to_standing_catch
#技能6動畫