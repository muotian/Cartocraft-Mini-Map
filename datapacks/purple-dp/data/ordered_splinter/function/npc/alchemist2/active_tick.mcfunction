execute as @e[tag=wool_purple.npc.alchemist2,type=interaction] at @s run function ordered_splinter:npc/alchemist2/process_click
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s run function ordered_splinter:npc/alchemist2/mannequin_tick
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] at @s run function ordered_splinter:npc/alchemist2/process_branch1
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] at @s run function ordered_splinter:npc/alchemist2/process_branch2

execute as @a[tag=!wool_purple.look_alchemist2_branch1] at @s if predicate ordered_splinter:look_alchemist2_branch1 if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_alchemist2_branch1] at @s if predicate ordered_splinter:look_alchemist2_branch1 run data modify entity @n[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_alchemist2_branch1] at @s unless predicate ordered_splinter:look_alchemist2_branch1 run data modify entity @n[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] background set value -16777215
execute as @a[tag=!wool_purple.look_alchemist2_branch2] at @s if predicate ordered_splinter:look_alchemist2_branch2 if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_alchemist2_branch2] at @s if predicate ordered_splinter:look_alchemist2_branch2 run data modify entity @n[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_alchemist2_branch2] at @s unless predicate ordered_splinter:look_alchemist2_branch2 run data modify entity @n[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] background set value -16777215
execute as @a at @s if predicate ordered_splinter:look_alchemist2_branch1 run tag @s add wool_purple.look_alchemist2_branch1
execute as @a at @s unless predicate ordered_splinter:look_alchemist2_branch1 run tag @s remove wool_purple.look_alchemist2_branch1
execute as @a at @s if predicate ordered_splinter:look_alchemist2_branch2 run tag @s add wool_purple.look_alchemist2_branch2
execute as @a at @s unless predicate ordered_splinter:look_alchemist2_branch2 run tag @s remove wool_purple.look_alchemist2_branch2
