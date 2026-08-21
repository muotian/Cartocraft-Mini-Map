# 執行者、執行位置是怪物

# 剛出生
execute unless score @s mini_light.monster_cooldown matches -2147483648..2147483647 store result score @s mini_light.monster_cooldown run random value 20..60

# 倒數
scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1
scoreboard players remove @s[scores={mini_light.monster_prepare=1..}] mini_light.monster_prepare 1
execute if entity @s[scores={mini_light.monster_prepare=1}] run function mini_light:monster/redstone_skeleton/cast

# 雷射技能
execute as @s[scores={mini_light.monster_cooldown=0},tag=!mini_light.casting] run function mini_light:monster/redstone_skeleton/prepare
execute as @s[scores={mini_light.monster_duration=0..}] run function mini_light:monster/redstone_skeleton/casting