#

execute store result score @s MagentaHealth run data get entity @s Health

execute if score @s MagentaHealth matches ..0 run execute store result score @s MagentaRandom run random value 1..100

execute if score @s MagentaHealth matches ..0 if score @s MagentaRandom matches 1..90 run function cook:item/lottery_bag/drop
