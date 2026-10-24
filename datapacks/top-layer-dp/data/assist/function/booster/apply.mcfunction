#> assist:booster/apply
# @s = player

attribute @s minecraft:movement_speed modifier add assist:booster 1 add_multiplied_total
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~

execute store result score $gametime assist.booster run time query gametime

scoreboard players operation @s assist.booster.due_time = $gametime assist.booster
scoreboard players operation @s assist.booster.due_time += $duration assist.booster

scoreboard players operation @s assist.booster.reapply_time = $gametime assist.booster
scoreboard players operation @s assist.booster.reapply_time += $cooldown assist.booster
scoreboard players operation @s assist.booster.id = $id assist.booster

$schedule function assist:booster/expiry_check $(duration)t append
$schedule function assist:booster/unblocking_check $(cooldown)t append
schedule function assist:booster/dust 1t
