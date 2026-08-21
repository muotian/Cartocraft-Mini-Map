execute if entity @s[tag=light_green.npc,type=piglin] at @s run return run function light_green:piglin_trader/tick

execute if entity @s[tag=light_green.piglin_girl_npc,type=villager] at @s run return run function light_green:npc_girl/tick

execute if entity @s[tag=light_green.spawn_mob] at @s run return run function light_green:mob/spawn

execute if entity @s[tag=light_green.spawner_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run return run function light_green:mob/spawner/place_convert
execute if entity @s[tag=light_green.spawner] at @s run return run function light_green:mob/spawner/convert

execute if entity @s[tag=light_green.enchant_table,type=item_frame] at @s run return run function light_green:enchantment_add/when_summon

execute if entity @s[tag=light_green.enchant_table.display,type=item_display] at @s run return run function light_green:enchantment_add/tick

execute if entity @s[tag=light_green.hoglin_ride.hoglin,type=hoglin] run function light_green:ride_hoglin/tick2

execute if entity @s[tag=light_green.arena_npc.interaction,type=interaction] at @s run return run function light_green:arena/npc/interaction/tick

execute if entity @s[tag=light_green.piglin_warrior,type=piglin] run return run function light_green:mob/piglin_warrior/tick

execute if entity @s[tag=light_green.piglin_axeman,type=piglin] run return run function light_green:mob/piglin_axeman/tick

execute if entity @s[tag=light_green.piglin_guard,type=piglin] run return run function light_green:mob/piglin_guard/tick

execute if entity @s[tag=light_green.piglin_shield,type=piglin] run return run function light_green:mob/piglin_shield/tick

execute if entity @s[tag=light_green.piglin_shaman,type=piglin] run return run function light_green:mob/piglin_shaman/tick

execute if entity @s[tag=light_green.hand_cannon.wave,type=marker] run return run function light_green:item/golem/hand_cannon/laser_wave/tick

execute if entity @s[tag=light_green.golem,type=piglin_brute] run return run function light_green:mob/small_golem/tick

execute if entity @s[tag=light_green.stone_stick,type=husk] run return run function light_green:mob/boss/graud_golem/stone_stick/tick

execute if entity @s[tag=light_green.boss] run return run function light_green:mob/boss/convert