execute as @p[tag=black.real,predicate=black:lootat_fake] at @s run function black:bossfight/boss1/skill3/heal
execute as @p[tag=black.real,predicate=!black:lootat_fake] at @s run function black:bossfight/boss1/skill3/damage
execute as @p[tag=black.fake] at @s run function black:bossfight/boss1/skill3/damage

kill @s
