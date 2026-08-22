execute store success score $take wool_purple.main.math run data get entity @s SelectedItem.components."minecraft:custom_data".weapon
execute store result score $slot wool_purple.main.math run data get entity @s SelectedItemSlot
$execute store success score $hand_anime wool_purple.main.math run execute if entity @n[tag=$(id)-hand]
execute if score $take wool_purple.main.math matches 1 if score $hand_anime wool_purple.main.math matches 0 run return run function ordered_splinter_hand_take:summon
execute if score $take wool_purple.main.math matches 0 if score $hand_anime wool_purple.main.math matches 1 run return run function ordered_splinter_hand_take:delete with storage player:data
