execute if entity @s[tag=pink_white_marker] run return fail

execute if score @s pink.mana_u matches ..0 run return fail

#
scoreboard players remove @s[scores={pink.mana_u=1..}] pink.mana_u 1

function pink:skills_1/white/effect
