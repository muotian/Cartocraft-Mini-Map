# 執行者、執行位置是被千面奇點打到的目標
scoreboard players set @s wool_purple.singularity 0
tag @s remove wool_purple.singularity_of_thousandfaces_target
damage @s 15 explosion by @p
execute as @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1.5
playsound weather.end_flash player @a ~ ~ ~ 2 1
function ordered_splinter:particle/explosion