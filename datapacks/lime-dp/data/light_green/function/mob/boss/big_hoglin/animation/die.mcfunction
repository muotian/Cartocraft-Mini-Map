execute facing entity @n[tag=light_green.boss.big_hoglin.target] feet run rotate @s ~ 0

execute if score @s light_green.boss.animation matches 175 if score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/health_5_15_/apply
execute if score @s light_green.boss.animation matches 175 unless score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/health_5/apply
execute if score @s light_green.boss.animation matches 175 run playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 3 1

execute if score @s light_green.boss.animation matches 163 if score $hoglin_limit light_green.main.math matches 1 at @n[tag=aj.big_hoglin.locator.r_arm] run particle dust{color:13619151,scale:1} ~ ~ ~ 0.5 1 0.5 0.2 500
execute if score @s light_green.boss.animation matches 163 if score $hoglin_limit light_green.main.math matches 1 at @n[tag=aj.big_hoglin.locator.l_arm] run particle dust{color:13619151,scale:1} ~ ~ ~ 0.5 1 0.5 0.2 500
execute if score @s light_green.boss.animation matches 163 unless score $hoglin_limit light_green.main.math matches 1 at @n[tag=aj.big_hoglin.locator.r_arm] run particle dust{color:16711680,scale:1} ~ ~ ~ 0.5 1 0.5 0.2 500
execute if score @s light_green.boss.animation matches 163 unless score $hoglin_limit light_green.main.math matches 1 at @n[tag=aj.big_hoglin.locator.l_arm] run particle dust{color:16711680,scale:1} ~ ~ ~ 0.5 1 0.5 0.2 500
execute if score @s light_green.boss.animation matches 163 if score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/die_15_/apply
execute if score @s light_green.boss.animation matches 163 unless score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/die/apply
execute if score @s light_green.boss.animation matches 166 run stopsound @a record light_green:fight_music-big_hoglin-1
execute if score @s light_green.boss.animation matches 166 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 165 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 165 run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 165 run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 165 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 2
execute if score @s light_green.boss.animation matches 163 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/die/play
execute if score @s light_green.boss.animation matches 50 if score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/zoglin_15_/apply
execute if score @s light_green.boss.animation matches 50 unless score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/zoglin/apply
execute if score @s light_green.boss.animation matches 50 if score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/variants/zoglin_15_/apply
execute if score @s light_green.boss.animation matches 50 unless score $hoglin_limit light_green.main.math matches 1 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/variants/zoglin/apply
execute if score @s light_green.boss.animation matches 50 run playsound minecraft:entity.hoglin.converted_to_zombified hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 50 if score $hoglin_limit light_green.main.math matches 1 run particle dust_color_transition{from_color:13092807,scale:2,to_color:1401867} ~ ~ ~ 1.5 1.5 1.5 1 1500
execute if score @s light_green.boss.animation matches 50 unless score $hoglin_limit light_green.main.math matches 1 run particle dust_color_transition{from_color:13500416,scale:2,to_color:1401867} ~ ~ ~ 1.5 1.5 1.5 1 1500
execute if score @s light_green.boss.animation matches 40 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_wakeup/play
execute if score @s light_green.boss.animation matches 22 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 22 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 22 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 22 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 5 as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/animations/die_roar/play

execute if score @s light_green.boss.animation matches 5 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
execute if score @s light_green.boss.animation matches 5 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
execute if score @s light_green.boss.animation matches 5 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
execute if score @s light_green.boss.animation matches 5 at @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5

execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.boss.big_hoglin.target]
execute if score @s light_green.boss.animation matches 0 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-big_hoglin-2 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/animations/die_nothing/play
execute if score @s light_green.boss.animation matches 0 run data modify entity @s NoAI set value 0b
execute if score @s light_green.boss.animation matches 0 run scoreboard players reset @s light_green.boss.attack_type