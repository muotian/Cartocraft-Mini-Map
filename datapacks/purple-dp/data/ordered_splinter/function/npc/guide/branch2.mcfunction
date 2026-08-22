execute unless entity @e[tag=wool_purple.npc.guide.dialog.branch.2,type=text_display] run return fail
execute if score #guide wool_purple.npc matches 3 run function ordered_splinter:npc/guide/dialog/4
execute if score #guide wool_purple.npc matches 1 run function ordered_splinter:npc/guide/dialog/9