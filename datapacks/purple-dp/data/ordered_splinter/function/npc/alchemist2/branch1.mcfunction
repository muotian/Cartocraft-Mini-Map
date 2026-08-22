execute unless entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run return fail
execute if score #alchemist2 wool_purple.npc matches 13 run function ordered_splinter:npc/alchemist2/dialog/14
execute if score #alchemist2 wool_purple.npc matches 10 run function ordered_splinter:npc/alchemist2/dialog/11
execute if score #alchemist2 wool_purple.npc matches 1 run function ordered_splinter:npc/alchemist2/dialog/15