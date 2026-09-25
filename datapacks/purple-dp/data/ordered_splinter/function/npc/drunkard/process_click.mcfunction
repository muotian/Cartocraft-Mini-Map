# @s = interaction (tag: wool_purple.npc.drunkard)
execute if data entity @s interaction run function ordered_splinter:npc/drunkard/dialog
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.drunkard,type=interaction] run function ordered_splinter:npc/drunkard/dialog
data remove entity @s attack
