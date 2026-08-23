
execute positioned ^ ^ ^0.1 if entity @a[distance=..50] unless entity @e[distance=..0.2,tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.0] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill3.2


execute positioned ~ ~ ~ as @a[dx=0,tag=brown_wool.thunderous_fiend_rift_fang.player] run damage @s 18 brown_wool:lightning_bolt


particle end_rod ~ ~ ~ 0.0 0.0 0.0 99999 1 force @a



