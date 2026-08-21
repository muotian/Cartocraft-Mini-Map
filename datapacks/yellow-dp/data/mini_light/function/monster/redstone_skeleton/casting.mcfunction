# 執行者、執行位置是怪物
execute anchored eyes facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^90 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute anchored eyes run function mini_light:monster/redstone_skeleton/laser
playsound entity.illusioner.cast_spell hostile @a ~ ~ ~ 0.6 2

execute as @s[scores={mini_light.monster_duration=0}] run function mini_light:monster/redstone_skeleton/cast_end

scoreboard players remove @s mini_light.monster_duration 1