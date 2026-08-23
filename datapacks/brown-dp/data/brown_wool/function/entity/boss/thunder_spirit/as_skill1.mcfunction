execute if score @s brown_wool.thunder_spirit.skill1 matches 40..200 rotated ~ 0 run tp @s ^ ^ ^1.5 ~3.75 ~


execute if entity @s[tag=brown_wool.thunder_spirit.skill1.1] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.2,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.3] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.4,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.5] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.6,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.5] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.7,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.8] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.6,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.8] if score @s brown_wool.thunder_spirit.skill1 matches 40..200 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.7,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.2

execute if entity @s[tag=brown_wool.thunder_spirit.skill1.1] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.2,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.3] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.4,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.5] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.6,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.5] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.7,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.8] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.6,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3
execute if entity @s[tag=brown_wool.thunder_spirit.skill1.8] if score @s brown_wool.thunder_spirit.skill1 matches 1..40 facing entity @e[type=block_display,tag=brown_wool.thunder_spirit.skill1.7,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill1.3




scoreboard players add @s brown_wool.thunder_spirit.skill1 1


execute if score @s brown_wool.thunder_spirit.skill1 matches 200.. run kill @s
