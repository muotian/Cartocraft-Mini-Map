# @s = interaction (tag: wool_purple.npc.alchemist1)
execute if data entity @s interaction run function ordered_splinter:npc/alchemist1/dialog
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.alchemist1,type=interaction] run function ordered_splinter:npc/alchemist1/dialog
data remove entity @s attack
