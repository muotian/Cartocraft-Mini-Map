execute as @p at @s if entity @e[tag=wool_purple.npc.guide_mannequin,tag=wool_purple.no_conversation_yet] run return run function ordered_splinter:npc/alchemist1/refuse
execute unless score #alchemist1 wool_purple.npc matches ..3 run scoreboard players set #alchemist1 wool_purple.npc 1
execute if score #alchemist1 wool_purple.npc matches 3 run function ordered_splinter:npc/alchemist1/dialog/3
execute if score #alchemist1 wool_purple.npc matches 2 run function ordered_splinter:npc/alchemist1/dialog/2
execute if score #alchemist1 wool_purple.npc matches 1 run function ordered_splinter:npc/alchemist1/dialog/1
execute if score #alchemist1 wool_purple.npc matches 0 run function ordered_splinter:npc/alchemist1/dialog/end