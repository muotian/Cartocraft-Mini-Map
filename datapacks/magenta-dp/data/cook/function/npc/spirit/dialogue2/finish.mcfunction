#

# 只有第一次完成結局對話才發放獎勵，避免重複領取
execute if score @s MagentaSpiritQuest matches ..1 run function cook:npc/spirit/dialogue2/reward

scoreboard players set @s MagentaSpiritQuest 2
playsound entity.player.levelup player @s ~ ~ ~ 0.6 1.4

scoreboard players reset @s MagentaSpiritLine
