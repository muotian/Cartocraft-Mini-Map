# 執行者、執行位置是怪物
particle item{item:"emerald"} ~ ~1 ~ 0.21 0.21 0.21 0.01 30 force
particle block{block_state:"emerald_block"} ~ ~1 ~ 0.21 0.21 0.21 0.01 30 force
particle block{block_state:"lime_glazed_terracotta"} ~ ~1 ~ 0.21 0.21 0.21 0.01 20 force

$damage @s $(amount) mini_light:player_counter_shield
$damage @s $(amount) mini_light:player_counter_shield