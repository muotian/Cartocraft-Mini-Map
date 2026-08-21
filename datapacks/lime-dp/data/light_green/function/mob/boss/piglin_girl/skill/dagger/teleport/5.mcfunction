execute store result score $y light_green.main.math run data get entity @s Pos[1]
$execute if score $y light_green.main.math matches ..$(y) at @s run tp @s ~ ~0.01 ~
$execute if score $y light_green.main.math matches ..$(y) run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/5 with storage light_green:boss