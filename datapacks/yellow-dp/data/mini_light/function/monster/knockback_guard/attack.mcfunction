# 執行者、執行位置是擊退怪

scoreboard players add @s mini_light.knockback_guard.count 1
scoreboard players operation @s mini_light.knockback_guard.count %= $2 mini_light.knockback_guard.count

execute if score @s mini_light.knockback_guard.count matches 1 run function mini_light:monster/knockback_guard/armor_on
execute if score @s mini_light.knockback_guard.count matches 0 run function mini_light:monster/knockback_guard/armor_off

tag @s remove mini_light.knockback_guard_attack