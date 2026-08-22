execute unless entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.2,type=text_display] run return fail
execute if score #swordmaster wool_purple.npc matches 15 run function ordered_splinter:npc/swordmaster/dialog/19
execute if score #swordmaster wool_purple.npc matches 1 run function ordered_splinter:npc/swordmaster/dialog/2