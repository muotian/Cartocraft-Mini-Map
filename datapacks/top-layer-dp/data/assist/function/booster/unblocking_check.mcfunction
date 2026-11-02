#> assist:booster/unblocking_check

execute store result score $gametime assist.booster run time query gametime
execute as @a[scores={assist.booster.reapply_time=1..}] if score @s assist.booster.reapply_time <= $gametime assist.booster at @s run function assist:booster/unblock
