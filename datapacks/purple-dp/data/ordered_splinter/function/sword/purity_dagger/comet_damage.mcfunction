# 執行者、執行位置是彗星

execute as @n[tag=wool_purple.comet_target,dx=0] run damage @s 5 magic by @p
execute as @n[tag=wool_purple.comet_target,dx=0,tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 1.2