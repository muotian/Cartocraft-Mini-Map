execute facing entity @n[tag=light_green.boss.piglin_girl.target] feet run rotate @s ~ ~
kill @e[tag=light_green.boss.piglin_girl.sprint_target,type=marker]
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_attack2_deal_end/play
execute if score $piglin_girl_spear.sprint light_green.main.math matches 1 run kill @e[tag=light_green.boss.piglin_girl.target]
execute if score $piglin_girl_spear.sprint light_green.main.math matches 1 run scoreboard players reset $piglin_girl_spear.sprint light_green.main.math
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 39
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value