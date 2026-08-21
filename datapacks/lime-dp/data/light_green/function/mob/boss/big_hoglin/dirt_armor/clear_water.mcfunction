execute as @e[tag=aj.big_hoglin.root,limit=1,distance=..30] run function animated_java:big_hoglin/variants/clear/apply
execute as @e[tag=aj.big_hoglin_head.root,limit=1,distance=..30] run function animated_java:big_hoglin_head/variants/clear/apply

scoreboard players set $hoglin_dirt_armor light_green.main.math 0

execute if score $hoglin_have_dirt light_green.main.math matches 0 run return fail
execute at @s run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 3 1
scoreboard players set $hoglin_have_dirt light_green.main.math 0