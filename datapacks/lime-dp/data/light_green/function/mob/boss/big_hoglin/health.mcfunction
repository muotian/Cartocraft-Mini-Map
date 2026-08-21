scoreboard players operation @s light_green.mob.health_late -= @s light_green.mob.health
execute if score $hoglin_dirt_armor light_green.main.math matches 1.. run scoreboard players operation $hoglin_dirt_armor light_green.main.math -= @s light_green.mob.health_late
execute if score $hoglin_dirt_armor light_green.main.math matches ..-1 run scoreboard players operation @s light_green.custom.health += $hoglin_dirt_armor light_green.main.math
execute if score $hoglin_dirt_armor light_green.main.math matches 0 run scoreboard players operation @s light_green.custom.health -= @s light_green.mob.health_late
execute if score $hoglin_dirt_armor light_green.main.math matches ..-1 run scoreboard players set $hoglin_dirt_armor light_green.main.math 0
scoreboard players set $big_hoglin.hurt light_green.main.math 10
effect give @s instant_health 1 200 true
execute store result score @s light_green.mob.health run data get entity @s Health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health