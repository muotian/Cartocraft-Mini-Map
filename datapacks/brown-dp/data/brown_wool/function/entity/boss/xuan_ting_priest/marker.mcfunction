

execute if entity @s[tag=!brown_wool.xuan_ting_priest.end] unless entity @e[type=stray, tag=brown_wool.xuan_ting_priest0] unless entity @a[tag=brown_wool.xuan_ting_priest.player] run function brown_wool:entity/boss/xuan_ting_priest/reset

execute unless entity @e[type=stray, tag=brown_wool.xuan_ting_priest0] if entity @a[tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.end


execute if entity @s[tag=brown_wool.xuan_ting_priest.end] at @s run function brown_wool:entity/boss/xuan_ting_priest/end0

execute as @e[type=marker,tag=brown_wool.xuan_ting_priest.end1] at @s run function brown_wool:entity/boss/xuan_ting_priest/end1


execute if entity @s[type=marker, tag=brown_wool.xuan_ting_priest.terrain_2] at @s run function brown_wool:entity/boss/xuan_ting_priest/terrain

execute unless score @s brown_wool.xuan_ting_priest.kill matches 3.. run function brown_wool:entity/boss/xuan_ting_priest/as_kill


execute as @e[type=stray, tag=brown_wool.xuan_ting_priest0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_monster0



