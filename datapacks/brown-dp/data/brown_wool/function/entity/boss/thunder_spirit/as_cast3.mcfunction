execute if entity @s[tag=brown_wool.thunder_spirit.cast3.1] if score @s brown_wool.thunder_spirit.cast3 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1 ~2.5 ~
execute if entity @s[tag=brown_wool.thunder_spirit.cast3.2] if score @s brown_wool.thunder_spirit.cast3 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1 ~-2.5 ~


execute if entity @s[tag=brown_wool.thunder_spirit.cast3.1] if score @s brown_wool.thunder_spirit.cast3 matches 25..230 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.cast3.2,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/cast3.1





scoreboard players add @s brown_wool.thunder_spirit.cast3 1


execute if score @s brown_wool.thunder_spirit.cast3 matches 230.. run kill @s
