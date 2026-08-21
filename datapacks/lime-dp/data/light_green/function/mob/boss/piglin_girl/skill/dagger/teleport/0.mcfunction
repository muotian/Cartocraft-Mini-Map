execute on target run tag @s add light_green.target
execute store result score $y light_green.main.math run data get entity @s Pos[1]
kill @e[tag=light_green.boss.piglin_girl.dager.teleport_locator]
execute store result storage light_green:boss y int 1 run scoreboard players get $y light_green.main.math
function light_green:mob/boss/piglin_girl/skill/dagger/teleport/1 with storage light_green:boss
execute at @s positioned ~ ~1 ~ facing entity @n[tag=light_green.boss.piglin_girl.dager.teleport_locator] feet rotated ~ 0 run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/laser
tp @s @n[tag=light_green.boss.piglin_girl.dager.teleport_locator]
execute store result score $y light_green.main.math run data get storage light_green:boss y
execute store result storage light_green:boss y int 1 run scoreboard players remove $y light_green.main.math 1
function light_green:mob/boss/piglin_girl/skill/dagger/teleport/5 with storage light_green:boss
kill @e[tag=light_green.boss.piglin_girl.dager.teleport_locator]
execute at @s align y run tp @s ~ ~ ~
playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 3 2
execute as @n[tag=light_green.target] run tag @s remove light_green.target
execute unless score $piglin_girl_dagger_throw_late light_green.main.math matches 3 run function light_green:mob/boss/piglin_girl/animation/dagger/shadow