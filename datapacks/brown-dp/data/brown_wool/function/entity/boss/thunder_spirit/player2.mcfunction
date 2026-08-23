
execute if entity @s[tag=!brown_wool.thunder_spirit.player2] run scoreboard players add @s brown_wool.thunder_spirit.playsound 1
execute if entity @s[tag=brown_wool.thunder_spirit.player2] run scoreboard players add @s brown_wool.thunder_spirit.playsound2 1

execute if entity @s[tag=!brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound matches 7320.. run stopsound @s * brown_wool:custom.miguel_johnson_good_day_to_die
execute if entity @s[tag=!brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound matches 7320.. run playsound brown_wool:custom.miguel_johnson_good_day_to_die record @s
execute if entity @s[tag=!brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound matches 7320.. run scoreboard players reset @s brown_wool.thunder_spirit.playsound

execute if entity @s[tag=brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound matches 1.. run scoreboard players reset @s brown_wool.thunder_spirit.playsound
execute if entity @s[tag=brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound2 matches 1980.. run stopsound @s * brown_wool:custom.alex_productions_elite
execute if entity @s[tag=brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound2 matches 1980.. run playsound brown_wool:custom.alex_productions_elite record @s
execute if entity @s[tag=brown_wool.thunder_spirit.player2] if score @s brown_wool.thunder_spirit.playsound2 matches 1980.. run scoreboard players reset @s brown_wool.thunder_spirit.playsound2








