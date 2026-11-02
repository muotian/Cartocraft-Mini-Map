scoreboard players add @s wool_purple.naraku_fallen_shortsword 1
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run particle dust_color_transition{from_color:[0.227,0.012,0.086],to_color:[1.000,0.475,0.631],scale:1} ~ ~1 ~ -0.35 0.6 -0.35 0 200 normal
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run damage @s 1.5 player_attack by @p
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 if entity @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run effect give @s slowness 2 1 true
execute if score @s wool_purple.naraku_fallen_shortsword matches 35 run scoreboard players set @s wool_purple.naraku_fallen_shortsword 0
execute unless entity @a[tag=wool_purple.holding_naraku] run tag @s remove wool_purple.naraku_fallen_shortsword_target
execute unless entity @a[tag=wool_purple.holding_naraku] run scoreboard players reset @s wool_purple.naraku_fallen_shortsword
