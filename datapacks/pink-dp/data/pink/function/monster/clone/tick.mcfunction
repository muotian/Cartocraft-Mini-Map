# clone
execute if entity @p[distance=..8] if score @s pink.monster.clone.cd matches 250.. run function pink:monster/clone/clone
scoreboard players add @s pink.monster.clone.cd 1




