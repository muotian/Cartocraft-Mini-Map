tag @s add gray.temp
execute on target if items entity @s weapon.mainhand music_disc_13[custom_data~{gray_ritual_torch:1b}] as @e[type=interaction,tag=gray.temp,limit=1] at @s run function ccmini_gray:map/ember/remove
execute on target if items entity @s weapon.mainhand music_disc_13[custom_data~{gray_ritual_torch:1b}] run item modify entity @s weapon.mainhand ccmini_gray:torch_ignit
data modify entity @s interaction set value {}
tag @s remove gray.temp