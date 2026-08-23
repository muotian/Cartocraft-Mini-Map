
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.player2] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.playsound 1
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.player2] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.playsound2 1

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound matches 6020.. run stopsound @s * brown_wool:custom.keys_of_moon_thunder_unison
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound matches 6020.. run playsound brown_wool:custom.keys_of_moon_thunder_unison record @s
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound matches 6020.. run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.playsound

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound matches 1.. run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.playsound
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound2 matches 2840.. run stopsound @s * brown_wool:custom.makai_symphony_endless_storm
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound2 matches 2840.. run playsound brown_wool:custom.makai_symphony_endless_storm record @s
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.player2] if score @s brown_wool.thunderous_fiend_rift_fang.playsound2 matches 2840.. run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.playsound2








