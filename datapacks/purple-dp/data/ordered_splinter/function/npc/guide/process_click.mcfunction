# @s = interaction (tag: wool_purple.npc.guide)
execute if data entity @s interaction run function ordered_splinter:npc/guide/dialog
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.guide,type=interaction] run function ordered_splinter:npc/guide/dialog
data remove entity @s attack
