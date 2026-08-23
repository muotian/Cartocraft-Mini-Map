
scoreboard players add @s brown_wool.cangting_general.kill 1

execute if score @s brown_wool.cangting_general.kill matches 1..2 run function brown_wool:entity/boss/cangting_general/kill1
execute if score @s brown_wool.cangting_general.kill matches 2 run function brown_wool:entity/boss/cangting_general/kill
execute if score @s brown_wool.cangting_general.kill matches 2 run function brown_wool:entity/boss/cangting_general/summon


