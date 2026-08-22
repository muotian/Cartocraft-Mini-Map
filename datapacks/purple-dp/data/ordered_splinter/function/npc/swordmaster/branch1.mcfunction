execute unless entity @e[tag=wool_purple.npc.swordmaster.dialog.branch.1,type=text_display] run return fail
execute if score #swordmaster wool_purple.npc matches 17 run function ordered_splinter:npc/swordmaster/dialog/18
execute if score #swordmaster wool_purple.npc matches 15 run function ordered_splinter:npc/swordmaster/dialog/16
execute if score #swordmaster wool_purple.npc matches 2 run function ordered_splinter:npc/swordmaster/dialog/3
execute if score #swordmaster wool_purple.npc matches 1 run function ordered_splinter:npc/swordmaster/dialog/end