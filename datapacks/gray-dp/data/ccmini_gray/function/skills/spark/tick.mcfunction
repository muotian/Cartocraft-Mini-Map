scoreboard players add @s gray.distance 1
#軌跡
particle smoke ~ ~ ~ 0.1 0.1 0.1 0 3
#是否撞到東西
execute on vehicle run function ccmini_gray:skills/spark/if_touch
#飛太久
execute if score @s gray.distance matches 30.. run function ccmini_gray:skills/spark/summon

