#
data modify block ~ ~ ~ TransferCooldown set value 60s

scoreboard players operation @s MagentaTimer -= @s MagentaFinish

execute if score @s MagentaHat matches 1 if score @s MagentaTimer matches ..-41 run function cook:cooking/raw
execute if score @s MagentaHat matches 1 if score @s MagentaTimer matches -40..40 run function cook:cooking/success
execute if score @s MagentaHat matches 1 if score @s MagentaTimer matches 41.. run function cook:cooking/burnt

execute unless score @s MagentaHat matches 1 if score @s MagentaTimer matches ..-21 run function cook:cooking/raw
execute unless score @s MagentaHat matches 1 if score @s MagentaTimer matches -20..20 run function cook:cooking/success
execute unless score @s MagentaHat matches 1 if score @s MagentaTimer matches 21.. run function cook:cooking/burnt

scoreboard players reset @s MagentaFinish
scoreboard players reset @s MagentaTimer
scoreboard players reset @s MagentaCooking
scoreboard players reset @s MagentaHat
scoreboard players reset @s MagentaBatch
