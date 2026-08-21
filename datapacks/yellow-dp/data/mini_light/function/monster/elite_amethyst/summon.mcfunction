

summon zombified_piglin ~ ~ ~ {Silent:1b,CustomName:{"bold":true,"color":"gold","translate":"entity.mini_light.elite_amethyst"}, equipment:{head:{id:"minecraft:golden_horse_armor",count:1,components:{"minecraft:item_model":"mini_light:elite_amethyst/head","minecraft:enchantment_glint_override":true}}, chest:{id:"amethyst_shard",components:{custom_data:{amethyst_envoy_die:1b}}}},Tags:["mini_light.amethyst_envoy1","new"],Health:100f,attributes:[{id:"attack_knockback",base:1.5},{id:"knockback_resistance",base:5},{id:"max_health",base:30}], drop_chances:{head:0.0f, chest:100.0f},PersistenceRequired:1b,DeathLootTable:"mini_light:monster_cave"}
summon item_display ~ ~ ~ {item:{id:"minecraft:golden_horse_armor",count:1,components:{"minecraft:item_model":"mini_light:elite_amethyst/body1","minecraft:enchantment_glint_override":true}},Tags:["mini_light.amethyst_envoy2","new","mini_light.decoration"],teleport_duration:2}
summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:golden_horse_armor",count:1,components:{"minecraft:item_model":"mini_light:elite_amethyst/body2","minecraft:enchantment_glint_override":true}},Tags:["mini_light.amethyst_envoy3","new","mini_light.decoration"],teleport_duration:2}



ride @n[tag=mini_light.amethyst_envoy2,tag=new] mount @n[tag=mini_light.amethyst_envoy1,tag=new]
ride @n[tag=mini_light.amethyst_envoy3,tag=new] mount @n[tag=mini_light.amethyst_envoy1,tag=new]

scoreboard players set @e[tag=mini_light.amethyst_envoy1,tag=new] mini_light.monster_cooldown 50

tag @e[tag=mini_light.amethyst_envoy1] remove new
tag @e[tag=new] remove new
