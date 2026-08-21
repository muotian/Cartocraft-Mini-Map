playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
#playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1

execute if score $piglin_girl_level light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/variants/heavy_hurt/apply
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/variants/light_hurt/apply
execute if score $piglin_girl_level light_green.main.math matches 1 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/variants/hurt/apply
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/variants/no_mask_hurt/apply