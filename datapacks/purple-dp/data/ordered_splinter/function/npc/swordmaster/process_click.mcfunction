# @s = interaction (tag: wool_purple.npc.swordmaster)
execute if data entity @s interaction run function ordered_splinter:npc/swordmaster/dialog
data remove entity @s interaction
execute on attacker as @e[tag=wool_purple.npc.swordmaster,type=interaction] run function ordered_splinter:npc/swordmaster/dialog
data remove entity @s attack
