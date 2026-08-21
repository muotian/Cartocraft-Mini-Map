stopsound @a record light_green:fight_music-piglin_girl
stopsound @a record light_green:fight_music-piglin_girl-2
bossbar set light_green:piglin_girl players
tag @e[tag=light_green.damage_locator,type=!marker] remove light_green.damage_locator
execute as @e[tag=light_green.crack,type=marker] run function light_green:mob/boss/piglin_girl/crack/kill
kill @e[tag=light_green.damage_locator,type=marker]
kill @e[tag=light_green.boss.piglin_girl.throw]
kill @e[tag=light_green.boss.piglin_girl.sprint_target,type=marker]
kill @e[tag=light_green.boss.piglin_girl.target,type=marker]
tag @e[tag=light_green.boss.piglin_girl.sprint_target] remove light_green.boss.piglin_girl.sprint_target
kill @e[tag=light_green.boss.piglin_girl.throw_target]
kill @e[tag=light_green.boss.piglin_girl.sweep_target,type=marker]
tag @e[tag=light_green.boss.piglin_girl.sweep_target,type=!player] remove light_green.boss.piglin_girl.sweep_target
scoreboard players reset @e[tag=light_green.boss.challenger] light_green.agony
execute as @n[tag=aj.piglin_girl.root,type=item_display] run function animated_java:piglin_girl/remove/this
execute as @n[tag=aj.piglin_girl_head.root,type=item_display] run function animated_java:piglin_girl_head/remove/this
function light_green:arena/difficulty/return
kill @n[tag=light_green.boss.piglin_girl]