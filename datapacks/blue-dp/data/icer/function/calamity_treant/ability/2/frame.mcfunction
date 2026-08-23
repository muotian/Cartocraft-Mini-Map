scoreboard players add @s icer.calamity_treant.ability2.frame 1
#技能持續時間加一

execute if score @s icer.calamity_treant.ability2.frame matches 25 run data merge entity @s {Invulnerable:1b}
execute if score @s icer.calamity_treant.ability2.frame matches 30 facing entity @p feet run tp @s ~ ~ ~ ~ 0
#技能中間再調整一次衝刺方向

execute if score @s icer.calamity_treant.ability2.frame matches 40 run function icer:calamity_treant/ability/2/particle_circle

execute positioned ^ ^ ^1 if entity @s if score @s icer.calamity_treant.ability2.frame matches 40..50 positioned ^ ^ ^0.5 if block ~ ~ ~ air unless entity @a[distance=..1] run tp @s ^ ^ ^0.5
#如果前方是空的就往前衝0.5格

execute if score @s icer.calamity_treant.ability2.frame matches 40.. positioned ^ ^ ^1 if entity @a[distance=..1.5] run function icer:calamity_treant/ability/2/test_player
execute if score @s icer.calamity_treant.ability2.frame matches 50.. run function icer:calamity_treant/ability/2/ability2_finish
execute if score @s icer.calamity_treant.ability2.frame matches 40.. positioned ^ ^ ^1.5 unless block ~ ~ ~ air run function icer:calamity_treant/ability/2/ability2_finish
#如果有阻礙則停下來並切換狀態