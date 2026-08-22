stopsound @a player pink:black_attack3
stopsound @a player pink:star_skill1_shoot5

playsound pink:black_attack3 player @a ~ ~ ~ 0.1 1.5
playsound pink:star_skill1_shoot5 player @a ~ ~ ~ 0.2 0.8

scoreboard players add @s[scores={pink.mana_v=..7}] pink.mana_v_tick 15

execute if entity @s[tag=pink.black1.kill] run function pink:skills_1/black/kill2

# Die
#tag @s add attacker
#execute as @e on attacker if entity @s[tag=attacker] run tag @s add fail

#execute unless entity @s[tag=fail] run function pink:skills_1/black/kill

#tag @a remove fail
#tag @s remove attacker

