damage @s 15 mob_attack by @n[tag=icer.calamity_treant]
#第二段傷害

particle end_rod ~ ~1 ~ 0 0 0 0.2 10 force
playsound entity.player.attack.strong ambient @a ~ ~ ~
#音效和特效

effect give @s slowness 3 3 true
#緩速