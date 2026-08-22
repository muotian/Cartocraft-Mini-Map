# 玩家

# 回血
effect give @s[scores={pink.black.strengthen_attack=1..}] regeneration 2 5 false
scoreboard players set @s[scores={pink.black.strengthen_attack=1}] pink.armor.star.regeneration_stop 2
scoreboard players set @s[scores={pink.black.strengthen_attack=2}] pink.armor.star.regeneration_stop 4
scoreboard players set @s[scores={pink.black.strengthen_attack=3..}] pink.armor.star.regeneration_stop 6

scoreboard players remove @s[scores={pink.black.strengthen_attack=1..}] pink.black.strengthen_attack 1
scoreboard players remove @s[scores={pink.black.strengthen_attack=1..}] pink.black.strengthen_attack 1
scoreboard players remove @s[scores={pink.black.strengthen_attack=1..}] pink.black.strengthen_attack 1

#

