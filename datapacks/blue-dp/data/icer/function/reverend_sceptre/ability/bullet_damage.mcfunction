damage @n[type=!#icer:cant_damage] 8 player_attack
#造成傷害

playsound entity.experience_orb.pickup ambient @a ~ ~ ~
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 10 force
#產生特效和音效

kill @s
#清除子彈