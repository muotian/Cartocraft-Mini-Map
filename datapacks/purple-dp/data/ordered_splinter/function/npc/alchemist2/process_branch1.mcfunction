# @s = branch 1 interaction
execute if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist2/branch1
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=interaction] if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.1,type=text_display] run function ordered_splinter:npc/alchemist2/branch1
data remove entity @s attack
