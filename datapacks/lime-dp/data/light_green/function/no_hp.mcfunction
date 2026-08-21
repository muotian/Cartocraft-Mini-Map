execute if entity @s[type=item] run function light_green:item

execute if entity @s[tag=light_green.summon.graud_golem] run function light_green:area_level/0

execute unless entity @s[tag=light_green] run return fail

execute if entity @s[tag=light_green.daze] run return run function light_green:daze/tick

execute if entity @s[tag=light_green.agony_text] run return run function light_green:item/piglin_girl/victim/agony/tick

execute if entity @s[tag=light_green.boss.piglin_girl.shadow_player] run return run function light_green:item/piglin_girl/dagger/shdow_tick

execute if entity @s[tag=light_green.tp_door] run return run function light_green:mob/boss/graud_golem/tp_door/tick

execute if entity @s[tag=light_green.shaman_bullet] run return run function light_green:mob/piglin_shaman/bullet/tick

execute if entity @s[tag=light_green.mob] run function light_green:mob/convert