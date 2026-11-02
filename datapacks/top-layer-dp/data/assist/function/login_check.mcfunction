#> assist:login_check
# @s = player

advancement revoke @s only assist:login
scoreboard players set @s assist.leave_game 0

execute as @s[scores={assist.booster.due_time=1..}] run function assist:booster/expire
execute as @s[scores={assist.booster.reapply_time=1..}] run function assist:booster/unblock
execute as @s[tag=assist.jump_pad.launch_ready] run function assist:jump_pad/cancel
