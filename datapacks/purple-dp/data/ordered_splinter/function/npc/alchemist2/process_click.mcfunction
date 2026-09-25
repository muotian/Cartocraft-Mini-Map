# @s = interaction (tag: wool_purple.npc.alchemist2)
execute if data entity @s interaction run function ordered_splinter:npc/alchemist2/dialog
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.alchemist2,type=interaction] run function ordered_splinter:npc/alchemist2/dialog
data remove entity @s attack
