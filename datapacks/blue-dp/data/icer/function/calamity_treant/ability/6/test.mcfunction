scoreboard players reset @s icer.calamity_treant.ability6.frame
#重製上一個階段的記分板

tag @s remove icer.using_ability6
#移除上一個狀態的標籤

execute positioned ^ ^ ^1.5 as @p[distance=..2] run tag @s add icer.catched
#將攻擊範圍的一個玩家抓住

execute if entity @a[tag=icer.catched] run function icer:calamity_treant/ability/6/catched
#如果有抓到就執行技能函數

execute unless entity @a[tag=icer.catched] run function icer:calamity_treant/ability/6/fail
#如果沒有抓到則技能收尾