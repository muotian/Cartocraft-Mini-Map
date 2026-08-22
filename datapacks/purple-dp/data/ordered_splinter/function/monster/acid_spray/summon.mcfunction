summon marker ^ ^1.5 ^1.5 {Tags:["wool_purple.monster","wool_purple.acid_spray","summon"]}
summon zombie ^ ^1.5 ^1.5 {CustomName:[{"translate":"acid_spray.1","color":"#00FF2A"},{"translate":"acid_spray.2","color":"#FF00A2"}],DeathLootTable:"ordered_splinter:null",Invulnerable:1b,drop_chances:{mainhand:0},equipment:{mainhand:{id:"iron_axe"}},IsBaby:1b,attributes:[{id:scale,base:0.25},{id:"entity_interaction_range",base:1f},{id:"attack_damage",base:-2f},{id:"attack_speed",base:999}],Tags:["wool_purple.monster","wool_purple.acid_spray.entity","summon"],active_effects:[{id:invisibility,duration:-1,amplifier:1,show_particles:0b}],PersistenceRequired:1b,Silent:1b}
execute store result score @e[tag=summon,limit=2] wool_purple.mob.id run scoreboard players add #index wool_purple.mob.id 1
tag @e[tag=summon,limit=2] remove summon
playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 1.2
playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 0.5
particle dust_color_transition{from_color:[1.000,0.000,0.635],to_color:[0.000,1.000,0.165],scale:1} ~ ~1.5 ~ 0.3 0.7 0.3 0.02 100