# 當偵測到移動且目前不在移動狀態時
execute if score $move wool_purple.boss_animation matches 1 unless score @s wool_purple.boss_move_step matches 1.. run function ordered_splinter:boss/archdemon/move/on
# 當偵測不到移動且目前處於移動第一階段時
execute unless score $move wool_purple.boss_animation matches 1 if score @s wool_purple.boss_move_step matches 1 run function ordered_splinter:boss/archdemon/move/off