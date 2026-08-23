tag @s add icer.using_ability6.catched
#給予狀態標籤

data merge entity @s {Invulnerable:0b}

playsound minecraft:block.chiseled_bookshelf.pickup ambient @a ~ ~ ~
#播放音效

execute as @e[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability6_catch/play
#播放動畫