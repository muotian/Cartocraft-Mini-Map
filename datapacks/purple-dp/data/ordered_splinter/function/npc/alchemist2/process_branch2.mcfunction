# @s = branch 2 interaction
execute if data entity @s interaction if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist2/branch2
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=interaction] if entity @e[tag=wool_purple.npc.alchemist2.dialog.branch.2,type=text_display] run function ordered_splinter:npc/alchemist2/branch2
data remove entity @s attack
