tag @s remove wool_purple.hellfire_target
tag @s remove wool_purple.in_boss_room
gamemode survival @s[scores={wool_purple.gametype=0}]
gamemode creative @s[scores={wool_purple.gametype=1}]
gamemode adventure @s[scores={wool_purple.gametype=2}]
gamemode spectator @s[scores={wool_purple.gametype=3}]
scoreboard players reset @s wool_purple.gametype
execute as a11-1-2-3-4 if entity @s[tag=wool_purple.end] run return fail
stopsound @s record wool_purple:archdemon_battle
execute as a11-1-2-3-4 at @s positioned ~-1 ~ ~-1 unless entity @a[dx=-19,dy=14,dz=-27] run tag @s remove wool_purple.boss_battle