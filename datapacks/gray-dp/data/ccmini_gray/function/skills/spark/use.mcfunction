advancement revoke @s only ccmini_gray:use_spark
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:small_flame ~ ~ ~ 0 0 0 0.2 10
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.3 0.5
execute if items entity @s weapon.mainhand music_disc_13[custom_data={flickering_spark:1b}] run item modify entity @s weapon.offhand ccmini_gray:smelt
execute if items entity @s weapon.offhand music_disc_13[custom_data={flickering_spark:1b}] run item modify entity @s weapon.mainhand ccmini_gray:smelt