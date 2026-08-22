#用於分配技能的tick

execute as @e[type=item_display,tag=portable_sandstorm] at @s run function ccmini_gray:skills/portable_sandstorm/tick
execute as @e[type=item_display,tag=aj.gray_sandstorm.root] at @s run function ccmini_gray:skills/sandstorm/tick

execute as @e[type=item_display,tag=gray.sand_forge_sword.shot] at @s run function ccmini_gray:skills/sand_forge_sword/tick
execute as @e[type=marker,tag=gray.sand_forge_sword.attack_target] at @s run function ccmini_gray:skills/sand_forge_sword/marker_run_tick
execute as @e[type=item_display,tag=gray.sand_forge_sword.rightclick_attack,tag=!gray.sand_forge_sword.rightclick_attack_stop] at @s run function ccmini_gray:skills/sand_forge_sword/rightclickattack_tick

execute as @e[type=item_display,tag=gray.paradoxical_aqua] at @s run function ccmini_gray:skills/paradoxical_aqua/tick
function ccmini_gray:skills/grit_of_pristine_revival/tick

#手持特定物品

execute as @a[nbt={HurtTime:9s}] if items entity @s weapon.offhand music_disc_13[custom_data~{gray.hourglass_of_chaotic_time:1b}] unless score @s gray.hourglass_cd matches 1.. at @s run function ccmini_gray:skills/hourglass_of_chaotic_time/affect
execute as @a if score @s gray.hourglass_timer matches ..0 at @s run function ccmini_gray:skills/hourglass_of_chaotic_time/time_is_up
execute as @a if score @s gray.hourglass_timer matches 1.. at @s run function ccmini_gray:skills/hourglass_of_chaotic_time/sound

execute as @a at @s if items entity @s weapon.* *[custom_data~{gray.relic_of_dustwind:1b}] anchored eyes positioned ^ ^ ^ run function ccmini_gray:skills/relic_of_dustwind/hold




execute as @a store success score @s gray.take_sfs if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{sand_forge_sword:1b}]
execute as @a[tag=!gray.taking_sfs] at @s if score @s gray.take_sfs matches 1 run tag @s remove gray.sand_forge_sword.attack_2
execute as @a[tag=!gray.taking_sfs] at @s if score @s gray.take_sfs matches 1 anchored eyes positioned ^ ^ ^ run tag @s add gray.sand_forge_sword_take
execute as @a[tag=gray.sand_forge_sword_take] unless score @s gray.sfs_cd matches 1.. at @s run function ccmini_gray:skills/sand_forge_sword/take
execute as @a[tag=gray.taking_sfs] at @s if score @s gray.take_sfs matches 0 anchored eyes positioned ^ ^ ^ run function ccmini_gray:skills/sand_forge_sword/take_off
execute as @a[tag=gray.taking_sfs] at @s if score @s gray.take_sfs matches 1 anchored eyes positioned ^ ^ ^ run function ccmini_gray:skills/sand_forge_sword/taking
execute as @e[type=item_display,tag=gray.sand_forge_sword] at @s run function ccmini_gray:skills/sand_forge_sword/if_owner_online
execute as @e[type=marker,tag=gray.remove_player_tag.taking_sfs] run function ccmini_gray:skills/sand_forge_sword/if_back_online
execute as @a[nbt={DeathTime:1s}] at @s run function ccmini_gray:skills/sand_forge_sword/take_off

execute as @e[type=item_display,tag=gray_fireball] at @s run function ccmini_gray:skills/spark/tick
execute as @e[type=area_effect_cloud,tag=gray.fire] at @s run function ccmini_gray:skills/spark/damage




#paradoxical_aqua
execute as @a on vehicle on passengers run tag @s add gray.have_vehicle
execute as @a[tag=!gray.have_vehicle] if items entity @s weapon.offhand music_disc_13[custom_data={paradoxical_aqua:true}] if items entity @s container.* potion[potion_contents={potion:water}] if score @s gray.player.hurt matches 1 unless score @s gray.player.hp matches 11.. at @s run function ccmini_gray:skills/paradoxical_aqua/start

tag @a remove gray.have_vehicle
scoreboard players reset @a gray.player.hurt