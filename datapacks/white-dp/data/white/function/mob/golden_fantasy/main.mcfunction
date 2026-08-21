
execute if predicate white:mob/is_target run scoreboard players remove @s white.mob.cd 1
execute if score @s white.mob.cd matches ..0 run function white:mob/golden_fantasy/1/use

# skill
execute if entity @e[tag=white.mob.golden_fantasy.1] run function white:mob/golden_fantasy/1/main