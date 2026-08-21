# 執行者、執行位置是鬼毒刀

# 新的
scoreboard players set @s[tag=new] mini_light.monster_cooldown 10
tag @s[tag=new] remove new

# 記分板扣分
scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1
scoreboard players remove @s[scores={mini_light.monster_prepare=1..}] mini_light.monster_prepare 1

# 準備完畢、施放技能
execute if score @s mini_light.monster_prepare matches 4 at @s rotated ~ 0 anchored eyes run function mini_light:monster/elite_poison_zombie/cast
execute if score @s mini_light.monster_prepare matches 0 run data modify entity @s NoAI set value 0b

# 開始準備
execute if score @s mini_light.monster_cooldown matches ..0 if entity @a[distance=..3] facing entity @p eyes run function mini_light:monster/elite_poison_zombie/prepare
