$damage @s $(damage)
#造成傷害，傷害數值是瘟疫的層數

scoreboard players add @e[type=!#icer:cant_damage,distance=0.1..3] icer.plague_count 1
#傳染效果

scoreboard players reset @s icer.plague_count
scoreboard players reset @s icer.plague_frame
#重製記分板

playsound minecraft:block.slime_block.break ambient @a ~ ~ ~
playsound entity.generic.explode ambient @a ~ ~ ~ 1 0.4
particle item_slime ~ ~1 ~ 1 1 1 5 200 force
particle sonic_boom ~ ~1 ~ 0 0 0 0.1 1 force
particle minecraft:sneeze ~ ~1 ~ 1 1 1 0.1 100 force
particle minecraft:trial_omen ~ ~1 ~ 1 1 1 0.1 100 force
#產生特效跟音效