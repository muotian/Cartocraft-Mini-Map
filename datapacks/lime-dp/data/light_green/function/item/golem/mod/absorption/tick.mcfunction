execute store result score $mod_level light_green.main.math run data get storage light_green:golem_item contents.components."minecraft:custom_data"."light_green:golem_armor_mod_level"
execute unless score @s light_green.hurt_schedule matches 201.. run scoreboard players add @s light_green.hurt_schedule 1
execute store result score $absorption light_green.main.math run data get entity @s AbsorptionAmount
execute unless score $absorption light_green.main.math matches 0.. run scoreboard players set $absorption light_green.main.math 0

execute if score $absorption light_green.main.math matches 0 unless score @s light_green.absorption = $absorption light_green.main.math run function light_green:item/golem/mod/absorption/life_control/0

execute store result score @s light_green.health run data get entity @s Health
execute store result score @s light_green.absorption run scoreboard players get $absorption light_green.main.math

execute if score $mod_level light_green.main.math matches 1 if score @s light_green.hurt_schedule matches 201.. run effect give @s absorption infinite 0 true
execute if score $mod_level light_green.main.math matches 1 if score @s light_green.hurt_schedule matches 201.. run scoreboard players reset @s light_green.hurt_math

execute if score $mod_level light_green.main.math matches 1 run return fail



execute if score $mod_level light_green.main.math matches 2 if score @s light_green.hurt_schedule matches 201.. run effect give @s absorption infinite 2 true
execute if score $mod_level light_green.main.math matches 2 if score @s light_green.hurt_schedule matches 201.. run scoreboard players reset @s light_green.hurt_math
execute if score $mod_level light_green.main.math matches 2 if score @s light_green.hurt_schedule matches 201.. run damage @s 2 light_green:saturation

execute if score $mod_level light_green.main.math matches 2 run return fail

execute if score @s light_green.hurt matches 0.. run scoreboard players add @s light_green.hurt_math 1

execute if score @s light_green.hurt_math matches 25.. run scoreboard players set @s light_green.hurt_schedule 201

execute if score $mod_level light_green.main.math matches 3 if score @s light_green.hurt_schedule matches 201.. run effect give @s absorption infinite 4 true
execute if score $mod_level light_green.main.math matches 3 if score @s light_green.hurt_schedule matches 201.. run scoreboard players reset @s light_green.hurt_math