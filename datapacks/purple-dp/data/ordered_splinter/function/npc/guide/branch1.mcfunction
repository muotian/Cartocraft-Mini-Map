execute unless entity @e[tag=wool_purple.npc.guide.dialog.branch.1,type=text_display] run return fail
execute if score #guide wool_purple.npc matches 8 run function ordered_splinter:npc/guide/dialog/9
execute if score #guide wool_purple.npc matches 3 run function ordered_splinter:npc/guide/dialog/9
execute if score #guide wool_purple.npc matches 2 run function ordered_splinter:npc/guide/dialog/3
execute if score #guide wool_purple.npc matches 1 run function ordered_splinter:npc/guide/dialog/2