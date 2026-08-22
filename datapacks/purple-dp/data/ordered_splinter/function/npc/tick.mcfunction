execute as @e[type=marker,tag=wool_purple.npc.guide.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.guide_mannequin] run function ordered_splinter:npc/guide/summon
execute as @e[type=marker,tag=wool_purple.npc.alchemist1.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.alchemist1_mannequin] unless entity @e[tag=wool_purple.npc.alchemist2_mannequin] run function ordered_splinter:npc/alchemist1/summon
execute as @e[type=marker,tag=wool_purple.npc.alchemist2.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.alchemist2_mannequin] run function ordered_splinter:npc/alchemist2/summon
execute as @e[type=marker,tag=wool_purple.npc.drunkard.spawner] at @s if entity @p[distance=..5] unless entity @e[tag=wool_purple.npc.drunkard_mannequin] run function ordered_splinter:npc/drunkard/summon
# 與「薇」對話
execute as @e[type=interaction,tag=wool_purple.npc.guide] at @s if data entity @s interaction run function ordered_splinter:npc/guide/dialog
execute as @e[type=interaction,tag=wool_purple.npc.guide] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.guide] at @s on attacker as @e[type=interaction,tag=wool_purple.npc.guide] run function ordered_splinter:npc/guide/dialog
execute as @e[type=interaction,tag=wool_purple.npc.guide] run data remove entity @s attack
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s run function ordered_splinter:npc/guide/tick
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.guide.dialog] ^ ^-0.4 ^0.75
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.guide.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.guide.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
execute as @e[tag=wool_purple.npc.guide_mannequin,type=mannequin] at @s run tp @e[tag=wool_purple.npc.guide.dialog.condition] ~ ~2.25 ~
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.1] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] run function ordered_splinter:npc/guide/branch1
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.1] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.1] at @s on attacker as @e[tag=wool_purple.npc.guide.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] run function ordered_splinter:npc/guide/branch1
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.1] run data remove entity @s attack
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.2] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] run function ordered_splinter:npc/guide/branch2
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.2] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.2] at @s on attacker as @e[tag=wool_purple.npc.guide.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] run function ordered_splinter:npc/guide/branch2
execute as @e[type=interaction,tag=wool_purple.npc.guide.dialog.branch.2] run data remove entity @s attack
execute as @a[tag=!wool_purple.look_guide_branch1] at @s if predicate ordered_splinter:look_guide_branch1 if entity @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_guide_branch1] at @s if predicate ordered_splinter:look_guide_branch1 run data modify entity @n[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_guide_branch1] at @s unless predicate ordered_splinter:look_guide_branch1 run data modify entity @n[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] background set value -16777215
execute as @a[tag=!wool_purple.look_guide_branch2] at @s if predicate ordered_splinter:look_guide_branch2 if entity @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_guide_branch2] at @s if predicate ordered_splinter:look_guide_branch2 run data modify entity @n[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_guide_branch2] at @s unless predicate ordered_splinter:look_guide_branch2 run data modify entity @n[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] background set value -16777215
execute as @a at @s if predicate ordered_splinter:look_guide_branch1 run tag @s add wool_purple.look_guide_branch1
execute as @a at @s unless predicate ordered_splinter:look_guide_branch1 run tag @s remove wool_purple.look_guide_branch1
execute as @a at @s if predicate ordered_splinter:look_guide_branch2 run tag @s add wool_purple.look_guide_branch2
execute as @a at @s unless predicate ordered_splinter:look_guide_branch2 run tag @s remove wool_purple.look_guide_branch2
# 與「牧師」對話 – Ⅰ
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1] at @s if data entity @s interaction run function ordered_splinter:npc/alchemist1/dialog
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1] at @s on attacker as @e[type=interaction,tag=wool_purple.npc.alchemist1] run function ordered_splinter:npc/alchemist1/dialog
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1] run data remove entity @s attack
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s run function ordered_splinter:npc/alchemist1/tick
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist1.dialog] ^ ^-0.4 ^0.75
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
execute as @e[tag=wool_purple.npc.alchemist1_mannequin,type=mannequin] at @s run tp @e[tag=wool_purple.npc.alchemist1.dialog.condition] ~ ~2.25 ~
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1.dialog.branch.1] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist1/branch1
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1.dialog.branch.1] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist1/branch1
execute as @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=interaction] run data remove entity @s attack
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1.dialog.branch.2] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist1/branch2
execute as @e[type=interaction,tag=wool_purple.npc.alchemist1.dialog.branch.2] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist1/branch2
execute as @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=interaction] run data remove entity @s attack
execute as @a[tag=!wool_purple.look_alchemist1_branch1] at @s if predicate ordered_splinter:look_alchemist1_branch1 if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_alchemist1_branch1] at @s if predicate ordered_splinter:look_alchemist1_branch1 run data modify entity @n[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_alchemist1_branch1] at @s unless predicate ordered_splinter:look_alchemist1_branch1 run data modify entity @n[tag=wool_purple.npc.alchemist1.dialog.branch.1,type=text_display] background set value -16777215
execute as @a[tag=!wool_purple.look_alchemist1_branch2] at @s if predicate ordered_splinter:look_alchemist1_branch2 if entity @e[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_alchemist1_branch2] at @s if predicate ordered_splinter:look_alchemist1_branch2 run data modify entity @n[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_alchemist1_branch2] at @s unless predicate ordered_splinter:look_alchemist1_branch2 run data modify entity @n[tag=wool_purple.npc.alchemist1.dialog.branch.2,type=text_display] background set value -16777215
execute as @a at @s if predicate ordered_splinter:look_alchemist1_branch1 run tag @s add wool_purple.look_alchemist1_branch1
execute as @a at @s unless predicate ordered_splinter:look_alchemist1_branch1 run tag @s remove wool_purple.look_alchemist1_branch1
execute as @a at @s if predicate ordered_splinter:look_alchemist1_branch2 run tag @s add wool_purple.look_alchemist1_branch2
execute as @a at @s unless predicate ordered_splinter:look_alchemist1_branch2 run tag @s remove wool_purple.look_alchemist1_branch2
# 與「牧師」對話 – Ⅱ
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2] at @s if data entity @s interaction run function ordered_splinter:npc/alchemist2/dialog
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2] at @s on attacker as @e[type=interaction,tag=wool_purple.npc.alchemist2] run function ordered_splinter:npc/alchemist2/dialog
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2] run data remove entity @s attack
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s run function ordered_splinter:npc/alchemist2/tick
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist2.dialog] ^ ^-0.4 ^0.75
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
execute as @e[tag=wool_purple.npc.alchemist2_mannequin,type=mannequin] at @s run tp @e[tag=wool_purple.npc.alchemist2.dialog.condition] ~ ~2.25 ~
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2.dialog.branch.1] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist2/branch1
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2.dialog.branch.1] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist2/branch1
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] run data remove entity @s attack
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2.dialog.branch.2] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist2/branch2
execute as @e[type=interaction,tag=wool_purple.npc.alchemist2.dialog.branch.2] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist2/branch2
execute as @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] run data remove entity @s attack
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
# 與「酒鬼」對話
execute as @e[type=interaction,tag=wool_purple.npc.drunkard] at @s if data entity @s interaction run function ordered_splinter:npc/drunkard/dialog
execute as @e[type=interaction,tag=wool_purple.npc.drunkard] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.drunkard] at @s on attacker as @e[type=interaction,tag=wool_purple.npc.drunkard] run function ordered_splinter:npc/drunkard/dialog
execute as @e[type=interaction,tag=wool_purple.npc.drunkard] run data remove entity @s attack
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s run function ordered_splinter:npc/drunkard/tick
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.drunkard.dialog] ^ ^-0.4 ^0.75
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
execute as @e[tag=wool_purple.npc.drunkard_mannequin,type=mannequin] at @s run tp @e[tag=wool_purple.npc.drunkard.dialog.condition] ~ ~2.25 ~
execute as @e[type=interaction,tag=wool_purple.npc.drunkard.dialog.branch.1] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] run function ordered_splinter:npc/drunkard/branch1
execute as @e[type=interaction,tag=wool_purple.npc.drunkard.dialog.branch.1] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] run function ordered_splinter:npc/drunkard/branch1
execute as @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=interaction] run data remove entity @s attack
execute as @e[type=interaction,tag=wool_purple.npc.drunkard.dialog.branch.2] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] run function ordered_splinter:npc/drunkard/branch2
execute as @e[type=interaction,tag=wool_purple.npc.drunkard.dialog.branch.2] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] run function ordered_splinter:npc/drunkard/branch2
execute as @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=interaction] run data remove entity @s attack
execute as @a[tag=!wool_purple.look_drunkard_branch1] at @s if predicate ordered_splinter:look_drunkard_branch1 if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_drunkard_branch1] at @s if predicate ordered_splinter:look_drunkard_branch1 run data modify entity @n[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_drunkard_branch1] at @s unless predicate ordered_splinter:look_drunkard_branch1 run data modify entity @n[tag=wool_purple.npc.drunkard.dialog.branch.1,type=text_display] background set value -16777215
execute as @a[tag=!wool_purple.look_drunkard_branch2] at @s if predicate ordered_splinter:look_drunkard_branch2 if entity @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_drunkard_branch2] at @s if predicate ordered_splinter:look_drunkard_branch2 run data modify entity @n[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_drunkard_branch2] at @s unless predicate ordered_splinter:look_drunkard_branch2 run data modify entity @n[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] background set value -16777215
execute as @a at @s if predicate ordered_splinter:look_drunkard_branch1 run tag @s add wool_purple.look_drunkard_branch1
execute as @a at @s unless predicate ordered_splinter:look_drunkard_branch1 run tag @s remove wool_purple.look_drunkard_branch1
execute as @a at @s if predicate ordered_splinter:look_drunkard_branch2 run tag @s add wool_purple.look_drunkard_branch2
execute as @a at @s unless predicate ordered_splinter:look_drunkard_branch2 run tag @s remove wool_purple.look_drunkard_branch2
# 與「劍聖」對話
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster] at @s if data entity @s interaction run function ordered_splinter:npc/swordmaster/dialog
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster] run data remove entity @s interaction
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster] at @s on attacker as @e[type=interaction,tag=wool_purple.npc.swordmaster] run function ordered_splinter:npc/swordmaster/dialog
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster] run data remove entity @s attack
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s run function ordered_splinter:npc/swordmaster/tick
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.swordmaster.dialog] ^ ^-0.4 ^0.75
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] ^ ^-0.6 ^0.75
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] ^ ^-0.8 ^0.75
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=interaction] ^ ^-0.625 ^-0.25
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s anchored eyes run tp @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=interaction] ^ ^-0.825 ^-0.25
execute as @e[tag=wool_purple.npc.swordmaster_mannequin,type=mannequin] at @s run tp @e[tag=wool_purple.npc.swordmaster.dialog.condition] ~ ~2.25 ~
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster.dialog.branch.1] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] run function ordered_splinter:npc/swordmaster/branch1
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster.dialog.branch.1] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] run function ordered_splinter:npc/swordmaster/branch1
execute as @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=interaction] run data remove entity @s attack
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster.dialog.branch.2] at @s if data entity @s interaction if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] run function ordered_splinter:npc/swordmaster/branch2
execute as @e[type=interaction,tag=wool_purple.npc.swordmaster.dialog.branch.2] run data remove entity @s interaction
execute as @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=interaction] at @s on attacker as @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] run function ordered_splinter:npc/swordmaster/branch2
execute as @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=interaction] run data remove entity @s attack
execute as @a[tag=!wool_purple.look_swordmaster_branch1] at @s if predicate ordered_splinter:look_swordmaster_branch1 if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_swordmaster_branch1] at @s if predicate ordered_splinter:look_swordmaster_branch1 run data modify entity @n[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_swordmaster_branch1] at @s unless predicate ordered_splinter:look_swordmaster_branch1 run data modify entity @n[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] background set value -16777215
execute as @a[tag=!wool_purple.look_swordmaster_branch2] at @s if predicate ordered_splinter:look_swordmaster_branch2 if entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] run playsound minecraft:ui.button.click player @a ~ ~ ~ 0.5 2
execute as @a[tag=!wool_purple.look_swordmaster_branch2] at @s if predicate ordered_splinter:look_swordmaster_branch2 run data modify entity @n[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] background set value -1335795359
execute as @a[tag=wool_purple.look_swordmaster_branch2] at @s unless predicate ordered_splinter:look_swordmaster_branch2 run data modify entity @n[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] background set value -16777215
execute as @a at @s if predicate ordered_splinter:look_swordmaster_branch1 run tag @s add wool_purple.look_swordmaster_branch1
execute as @a at @s unless predicate ordered_splinter:look_swordmaster_branch1 run tag @s remove wool_purple.look_swordmaster_branch1
execute as @a at @s if predicate ordered_splinter:look_swordmaster_branch2 run tag @s add wool_purple.look_swordmaster_branch2
execute as @a at @s unless predicate ordered_splinter:look_swordmaster_branch2 run tag @s remove wool_purple.look_swordmaster_branch2