execute as @n[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability1/play
#播放使用技能動畫

scoreboard players remove @s icer.boss_mana 10
#消耗掉魔力值

playsound block.beacon.activate ambient @a ~ ~ ~
#播放音效

tag @s add icer.using_ability
tag @s remove icer.standing
tag @s remove icer.moving
#狀態標籤替換成使用技能

tp @s ~ ~ ~ facing entity @p eyes
data merge entity @s {NoAI:1b}
data merge entity @s {Invulnerable:1b}
#決定好boss施放技能的方向後將boss定住

execute as @a[distance=..30] at @s run summon marker ~ ~ ~ {Tags:["icer.calamity_treant.ability1.marker"]}
#在技能範圍內的玩家腳底下生成一個雷射用標記

scoreboard players operation @s icer.boss_last_ability = @s icer.random
scoreboard players reset @s icer.random
