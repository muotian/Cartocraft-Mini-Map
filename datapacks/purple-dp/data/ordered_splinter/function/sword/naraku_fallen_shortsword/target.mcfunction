scoreboard players add @s wool_purple.naraku_fallen_shortsword 1
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run particle dust_color_transition{from_color:[0.227,0.012,0.086],to_color:[1.000,0.475,0.631],scale:1} ~ ~1 ~ -0.35 0.6 -0.35 0 200 normal
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run damage @s 1.5 player_attack by @p[tag=wool_purple.naraku_fallen_shortsword_user]
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run scoreboard players set @s wool_purple.naraku_fallen_shortsword 0
execute unless items entity @p[tag=wool_purple.naraku_fallen_shortsword_user] weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run tag @s remove wool_purple.naraku_fallen_shortsword_target