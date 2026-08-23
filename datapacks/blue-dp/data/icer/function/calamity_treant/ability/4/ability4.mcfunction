tag @s remove icer.standing
tag @s remove icer.moving
tag @s add icer.using_ability4
#切換狀態

data merge entity @s {NoAI:1b}
#將boss定身

execute as @n[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability4/play
#播放技能動畫

scoreboard players operation @s icer.boss_last_ability = @s icer.random
scoreboard players reset @s icer.random
