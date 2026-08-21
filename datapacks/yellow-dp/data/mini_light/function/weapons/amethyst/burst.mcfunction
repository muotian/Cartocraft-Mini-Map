# 執行者是玩家、紫水晶燈籠

tag @s add this
$tag $(target) add burst_target

function mini_light:weapons/amethyst/calculate_damage

execute as @e[tag=burst_target] at @s run function mini_light:weapons/amethyst/summon_crystal

execute as @e[tag=burst_target] at @s run function mini_light:weapons/amethyst/_damage with storage mini_light:weapons/damage value

tag @s remove this
tag @e[tag=burst_target] remove burst_target