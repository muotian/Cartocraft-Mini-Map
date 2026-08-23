scoreboard players add @s icebird.core 1
execute if score @s icebird.core matches ..6 run tp @s ~ ~0.08 ~
execute if score @s[tag=black.1] icebird.core matches 6 run particle minecraft:wax_on ~ ~ ~ 0 1 0 1 20
execute if score @s[tag=black.2] icebird.core matches 6 run particle minecraft:wax_off ~ ~ ~ 0 1 0 1 20
execute if score @s icebird.core matches 7.. run tp @s ~ ~-0.35 ~
execute if score @s icebird.core matches 15 run particle minecraft:firework ~ ~ ~ 0 0 0 0.2 8 force
kill @s[scores={icebird.core=20..}]