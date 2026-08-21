execute unless entity @s[type=piglin] run return fail
execute on attacker if entity @s[tag=light_green.piglin_shield,type=piglin] run scoreboard players reset @s light_green.main.math
execute if entity @s[tag=light_green.piglin_warrior,type=piglin] run function light_green:mob/piglin_warrior/defence/clear
execute if entity @s[tag=light_green.piglin_warrior,type=piglin] run scoreboard players set @s light_green.mob.ai 60