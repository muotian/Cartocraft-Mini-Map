# 執行者、執行位置是玩家
advancement revoke @s only mini_light:weapons/emerald/shield

scoreboard players operation $half_shield_count mini_light.main = @s mini_light.counter_shield_count
scoreboard players operation $half_shield_count mini_light.main /= $2 mini_light.main
execute if score $half_shield_count mini_light.main matches 0 run scoreboard players add $half_shield_count mini_light.main 1
execute store result storage mini_light:counter_shield amount int 1 run scoreboard players get $half_shield_count mini_light.main

# 音效
playsound item.shield.block master @a ~ ~ ~ 0.9 1.3
playsound block.glass.break master @a ~ ~ ~ 0.8 0.5

# 反擊
execute on attacker at @s run function mini_light:weapons/emerald/counter_shield/counter_attack with storage mini_light:counter_shield {}

# 治療
effect give @s instant_health 1 0 true

# 刪除鱗甲
function mini_light:weapons/emerald/counter_shield/remove_shield with storage mini_light:counter_shield {}

# 扣分
scoreboard players operation @s[scores={mini_light.counter_shield_count=1..}] mini_light.counter_shield_count -= $half_shield_count mini_light.main