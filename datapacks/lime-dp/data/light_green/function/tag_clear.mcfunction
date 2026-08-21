tag @s remove light_green.target
tag @s remove light_green.damage_target
tag @s remove light_green.damage_locator
tag @s remove light_green.boss.piglin_girl.sprint_target
tag @s remove light_green.boss.big_hoglin.target
tag @s remove light_green.boss.piglin_girl.target
tag @s remove light_green.boss.graud_golem.looking_target
tag @s remove light_green.boss.graud_golem.earth_quack.target
tag @s remove light_green.mud_apply
tag @s remove light_green.blood_apply
tag @s remove light_green.saturation.heal
tag @s remove light_green.absorption.life_control

stopsound @s record light_green:fight_music-graud_golem-1
stopsound @s record light_green:fight_music-graud_golem-2
stopsound @s record light_green:fight_music-big_hoglin-1
stopsound @s record light_green:fight_music-big_hoglin-2
stopsound @s record light_green:fight_music-piglin_girl
stopsound @s record light_green:fight_music-piglin_girl-2

execute if entity @s[tag=light_green.boss.challenger] run function light_green:random {math1:1,math2:4}
execute if entity @s[tag=light_green.boss.challenger] if score $random light_green.main.math matches 1 at @n[tag=light_green.summon.graud_golem] positioned ~24 ~38 ~24 facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 20
execute if entity @s[tag=light_green.boss.challenger] if score $random light_green.main.math matches 2 at @n[tag=light_green.summon.graud_golem] positioned ~-24 ~38 ~24 facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 20
execute if entity @s[tag=light_green.boss.challenger] if score $random light_green.main.math matches 3 at @n[tag=light_green.summon.graud_golem] positioned ~24 ~38 ~-24 facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 20
execute if entity @s[tag=light_green.boss.challenger] if score $random light_green.main.math matches 4 at @n[tag=light_green.summon.graud_golem] positioned ~-24 ~38 ~-24 facing entity @n[tag=light_green.summon.graud_golem] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 20
execute if entity @e[type=piglin_brute,tag=light_green.boss.piglin_girl,limit=1] run bossbar set light_green:piglin_girl players @a[tag=light_green.boss.challenger]

scoreboard players set @s light_green.second_life.apply 0
scoreboard players set $absorption light_green.main.math 0
scoreboard players set @s light_green.absorption 0
scoreboard players reset @s light_green.second_life.damage
scoreboard players reset @s light_green.death
scoreboard players reset @s light_green.agony
tag @s remove light_green.agony_weaken