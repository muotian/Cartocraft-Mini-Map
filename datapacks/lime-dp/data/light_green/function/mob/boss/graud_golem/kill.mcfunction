stopsound @a record light_green:fight_music-graud_golem-1
stopsound @a record light_green:fight_music-graud_golem-2
kill @e[tag=light_green.boss.graud_golem_leg,limit=4,type=husk]
kill @e[tag=light_green.stone_stick,limit=4,type=husk]
kill @n[tag=light_green.boss.graud_golem.looking_target]
execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/remove/this
kill @n[tag=light_green.boss.graud_golem]
scoreboard players reset $golem_summon light_green.main.math