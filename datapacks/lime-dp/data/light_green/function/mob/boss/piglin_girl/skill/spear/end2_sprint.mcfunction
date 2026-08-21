execute facing entity @n[tag=light_green.boss.piglin_girl.target] feet run rotate @s ~ ~
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint_deal_sprint/play
scoreboard players set @s light_green.boss.animation 9
scoreboard players set @s light_green.boss.attack_type 39
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value