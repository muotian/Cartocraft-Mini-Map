execute store result score $health light_green.main.math run data get entity @s Health
scoreboard players operation $health light_green.main.math += @s light_green.heal
execute store result score $max_health light_green.main.math run attribute @s max_health get
execute store result storage light_green:heal health int 1 run scoreboard players operation $health light_green.main.math -= $max_health light_green.main.math 
execute if score $health light_green.main.math matches 0.. run data modify storage light_green:heal health set value 0
execute at @s anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {WaitTime:0,Radius:0f,Duration:6,Age:4,ReapplicationDelay:1,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:240,duration:1,show_icon:0b,show_particles:0b}]}}
function light_green:player/heal/1 with storage light_green:heal
scoreboard players reset @s light_green.heal
scoreboard players set @s light_green.instant_heal.cold 2