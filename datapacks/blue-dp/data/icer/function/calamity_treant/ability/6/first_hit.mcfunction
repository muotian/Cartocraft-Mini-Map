damage @s 10 mob_attack by @n[tag=icer.calamity_treant]
#第一段傷害

particle end_rod ~ ~1 ~ 0 0 0 0.2 10 force
playsound entity.player.attack.strong ambient @a ~ ~ ~
#產生音效跟特效

execute as @n[tag=icer.ability6_ride] at @s run tp @s ~ ~-0.5 ~
#攻擊時稍微移動

scoreboard players add @s icer.plague_count 1