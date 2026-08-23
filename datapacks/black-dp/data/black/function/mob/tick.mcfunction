execute as @e[type=iron_golem,tag=black.field_cast] at @s run function black:mob/1/tick
execute as @e[type=skeleton,tag=black.field_cast] at @s run function black:mob/6/tick
execute as @e[type=wither_skeleton,tag=black.field_cast] at @s run function black:mob/7/tick
execute as @e[type=item_display,tag=black.display_1] at @s run function black:mob/field/tick1 with storage icebird1209:core
execute as @e[type=item_display,tag=black.display_2] at @s run function black:mob/field/tick2 with storage icebird1209:core
execute as @e[type=item_display,tag=black.display_3] at @s run function black:mob/field/tick3 with storage icebird1209:core
execute as @e[type=marker,tag=black.mob2_lazer] at @s run function black:mob/2/tick
execute as @e[type=marker,tag=black.mob2_lazer.2,tag=black_lazer.2_act] at @s run function black:mob/2/tick2
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:fire_resistance",amplifier:23b}]}}] at @s run function black:mob/10/ini
execute as @e[type=#minecraft:hostile,tag=black.mobs] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:4}}}} run particle dust_color_transition{from_color:[1.000,0.235,0.000],to_color:[1.000,0.729,0.459],scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 20 force