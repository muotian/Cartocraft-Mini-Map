# 執行者、執行位置是被靈魂紊亂的怪物
particle soul ~ ~ ~ 0.1 0.1 0.1 0.1 50 force

tag @s remove mini_light.soul_tag
function mini_light:weapons/lantern/soul/_damage with storage mini_light:weapons/damage value
tag @e[tag=mini_light.soul_previous] remove mini_light.soul_previous
tag @s add mini_light.soul_previous

execute if entity @e[tag=mini_light.soul_tag] as @n[tag=mini_light.soul_tag,tag=!mini_light.soul_previous] at @s run function mini_light:weapons/lantern/soul/iteration