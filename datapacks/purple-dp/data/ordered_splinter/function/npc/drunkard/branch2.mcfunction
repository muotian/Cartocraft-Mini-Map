execute unless entity @e[tag=wool_purple.npc.drunkard.dialog.branch.2,type=text_display] run return fail
execute if score #drunkard wool_purple.npc matches 3 run function ordered_splinter:npc/drunkard/dialog/4
execute if score #drunkard wool_purple.npc matches 1 run function ordered_splinter:npc/drunkard/dialog/2