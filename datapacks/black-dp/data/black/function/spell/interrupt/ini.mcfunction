advancement revoke @s only black:interrupt

execute at @s[predicate=black:can_crit,scores={icebird.spell_cd=0}] run function black:spell/interrupt/ini2

tag @s remove interrupt_crit_hit
tag @e remove interrupt_attacked