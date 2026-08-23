execute as @n[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability2/play
#播放使用技能動畫

scoreboard players remove @s icer.boss_mana 20
#消耗掉魔力值

playsound block.beacon.activate ambient @a ~ ~ ~
#播放音效

tag @s add icer.using_ability2
tag @s remove icer.standing
tag @s remove icer.moving
#狀態標籤替換成使用技能

execute facing entity @p feet run tp @s ~ ~ ~ ~ 0
data merge entity @s {NoAI:1b}
#決定好boss施放技能的方向後將boss定住

scoreboard players operation @s icer.boss_last_ability = @s icer.random
scoreboard players reset @s icer.random


