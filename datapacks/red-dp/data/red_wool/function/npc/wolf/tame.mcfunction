advancement revoke @s only red_wool:npc/tame_wolf
data modify entity @n[tag = red_wool.wolf] NoAI set value false
attribute @n[tag = red_wool.wolf] attack_damage base set 0
tag @n[tag = red_wool.wolf] add red_wool.wolf.active
scoreboard players set wolf red_wool.chat 0
function red_wool:npc/wolf/chat