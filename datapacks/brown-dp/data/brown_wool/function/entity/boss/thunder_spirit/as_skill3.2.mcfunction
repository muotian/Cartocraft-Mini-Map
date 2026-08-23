


execute unless score @s brown_wool.thunder_spirit.skill3.1 matches 0.. store result score @s brown_wool.thunder_spirit.skill3_random run random value 1..9
execute unless score @s brown_wool.thunder_spirit.skill3.1 matches 0.. store result score @s brown_wool.thunder_spirit.skill3_random run random value 1..9

execute if score @s brown_wool.thunder_spirit.skill3_random matches 1 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~ ~ ~ run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 2 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~ ~ ~1 run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 3 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~ ~ ~2 run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 4 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~ ~ ~-1 run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 5 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~ ~ ~-2 run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 6 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~1 ~ ~ run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 7 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~2 ~ ~ run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 8 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~-1 ~ ~ run rotate @s facing ~ ~ ~
execute if score @s brown_wool.thunder_spirit.skill3_random matches 9 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 positioned ~-2 ~ ~ run rotate @s facing ~ ~ ~

execute if score @s brown_wool.thunder_spirit.skill3.1 matches 1..10 run function brown_wool:entity/boss/thunder_spirit/skill3.1

execute if score @s brown_wool.thunder_spirit.skill3.1 matches 10.. if block ^ ^ ^1 air if block ^ ^ ^2 air run tp @s ^ ^ ^2


execute if score @s brown_wool.thunder_spirit.skill3_random matches 1.. run scoreboard players reset @s brown_wool.thunder_spirit.skill3_random


execute as @a[tag=brown_wool.thunder_spirit.player,distance=..1] run damage @s 18 brown_wool:lightning_bolt

scoreboard players add @s brown_wool.thunder_spirit.skill3.1 1

execute if score @s brown_wool.thunder_spirit.skill3.1 matches 100.. run kill @s


