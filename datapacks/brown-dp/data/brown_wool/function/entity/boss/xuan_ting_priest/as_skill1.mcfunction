execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.1] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1 ~3.4 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.2] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1 ~-3.4 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.3] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1.5 ~5.1 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.4] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 rotated ~ 0 run tp @s ^ ^ ^1.5 ~-5.1 ~

execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.1] if score @s brown_wool.xuan_ting_priest.skill1 matches 1..25 facing entity @e[type=block_display,tag=brown_wool.xuan_ting_priest.skill1.2,limit=1] feet run function brown_wool:entity/boss/xuan_ting_priest/skill1.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.3] if score @s brown_wool.xuan_ting_priest.skill1 matches 1..25 facing entity @e[type=block_display,tag=brown_wool.xuan_ting_priest.skill1.4,limit=1] feet run function brown_wool:entity/boss/xuan_ting_priest/skill1.2

execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.1] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 facing entity @e[type=block_display,tag=brown_wool.xuan_ting_priest.skill1.2,limit=1] feet run function brown_wool:entity/boss/xuan_ting_priest/skill1.1
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill1.3] if score @s brown_wool.xuan_ting_priest.skill1 matches 25..230 facing entity @e[type=block_display,tag=brown_wool.xuan_ting_priest.skill1.4,limit=1] feet run function brown_wool:entity/boss/xuan_ting_priest/skill1.1





scoreboard players add @s brown_wool.xuan_ting_priest.skill1 1


execute if score @s brown_wool.xuan_ting_priest.skill1 matches 230.. run kill @s
