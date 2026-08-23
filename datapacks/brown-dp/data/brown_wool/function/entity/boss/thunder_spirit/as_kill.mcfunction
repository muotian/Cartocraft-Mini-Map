
scoreboard players add @s brown_wool.thunder_spirit.kill 1

execute if score @s brown_wool.thunder_spirit.kill matches 1..3 run function brown_wool:entity/boss/thunder_spirit/kill1
execute if score @s brown_wool.thunder_spirit.kill matches 3 run function brown_wool:entity/boss/thunder_spirit/kill
execute if score @s brown_wool.thunder_spirit.kill matches 3 run function brown_wool:entity/boss/thunder_spirit/summon


