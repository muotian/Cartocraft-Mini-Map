#> assist:booster/expiry_check

execute store result score $gametime assist.booster run time query gametime
execute as @a[scores={assist.booster.due_time=1..}] if score @s assist.booster.due_time <= $gametime assist.booster at @s run function assist:booster/expire
