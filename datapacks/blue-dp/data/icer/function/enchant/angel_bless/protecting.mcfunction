effect give @s resistance 1 0 true
#給予抗性效果

execute as @e[type=!#icer:cant_damage,distance=..3] run effect give @s slowness 1 1 true
#緩速周圍生物

particle end_rod ~ ~1 ~ 1.5 1.5 1.5 0.01 1 force
#產生粒子效果