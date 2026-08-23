
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.1] positioned ^ ^ ^0.1 if entity @a[distance=..50] unless entity @e[distance=..0.2,tag=brown_wool.xuan_ting_priest.skill1.2] run function brown_wool:entity/boss/xuan_ting_priest/skill1.1
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.3] positioned ^ ^ ^0.1 if entity @a[distance=..50] unless entity @e[distance=..0.2,tag=brown_wool.xuan_ting_priest.skill1.4] run function brown_wool:entity/boss/xuan_ting_priest/skill1.1


execute positioned ~ ~ ~ as @a[dx=0,tag=brown_wool.xuan_ting_priest.player] run damage @s 16 brown_wool:lightning_bolt


particle end_rod ~ ~ ~ 0.0 0.0 0.0 99999 1 force @a



