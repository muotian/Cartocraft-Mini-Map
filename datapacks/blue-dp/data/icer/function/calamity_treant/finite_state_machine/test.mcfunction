scoreboard players add @s icer.boss_cooldown 1

execute if score @s icer.boss_cooldown matches 10 if entity @p[distance=..5] if entity @s[tag=icer.standing] store result score @s icer.random run random value 1..4
execute if score @s icer.boss_cooldown matches 10 if entity @p[distance=..5] if entity @s[tag=icer.moving] store result score @s icer.random run random value 1..4

execute if score @s icer.boss_cooldown matches 10 if entity @p[distance=6..] if entity @s[tag=icer.standing] store result score @s icer.random run random value 3..6
execute if score @s icer.boss_cooldown matches 10 if entity @p[distance=6..] if entity @s[tag=icer.moving] store result score @s icer.random run random value 3..6

execute if score @s icer.random matches 1 unless score @s icer.boss_last_ability = @s icer.random run function icer:calamity_treant/ability/6/ability6
execute if score @s icer.random matches 2 unless score @s icer.boss_last_ability = @s icer.random run function icer:calamity_treant/ability/5/ability5
execute if score @s icer.random matches 3 unless score @s icer.boss_last_ability = @s icer.random run function icer:calamity_treant/ability/2/ability2
execute if score @s icer.random matches 4 unless score @s icer.boss_last_ability = @s icer.random run function icer:calamity_treant/ability/3/ability3
execute if score @s icer.random matches 5 unless score @s icer.boss_last_ability = @s icer.random run function icer:calamity_treant/ability/1/ability1
execute if score @s icer.random matches 6 unless score @s icer.boss_last_ability = @s icer.random unless entity @e[tag=icer.calamity_treant.ability4] run function icer:calamity_treant/ability/4/ability4

execute if score @s icer.boss_cooldown matches 11.. run scoreboard players reset @s icer.boss_cooldown