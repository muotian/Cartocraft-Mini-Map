$data modify storage damage:data dis set value $(dis)
$data modify storage damage:data damage set value $(damage)
$data modify storage damage:data slot set value $(slot)
$data modify storage damage:data type set value $(type)
execute store result storage damage:data dis_half double 0.01 run data get storage damage:data dis 50
execute store result score $dis wool_purple.main.math run data get storage damage:data dis 100
execute store result storage damage:data dis double 0.01 run scoreboard players remove $dis wool_purple.main.math 100
$execute at @s anchored eyes positioned ^ ^-0.5 ^$(long) run summon marker ~ ~ ~ {Tags:[wool_purple.attack_point]}
execute store result storage damage:data fire_aspect int 1 run data get entity @s SelectedItem.components."minecraft:enchantments".minecraft:fire_aspect 80
function ordered_splinter_apply_damage:1 with storage damage:data