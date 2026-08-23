#给与速度效果
effect give @s[scores={green_wool.gladius_energy_bar=1000}] speed 10 4
#扣除分数
scoreboard players remove @s[scores={green_wool.gladius_energy_bar=1000}] green_wool.gladius_energy_bar 1000
#移除成就
advancement revoke @s only green_wool:gladius
