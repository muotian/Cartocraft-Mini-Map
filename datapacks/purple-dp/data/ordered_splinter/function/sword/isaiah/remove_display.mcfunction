execute unless predicate ordered_splinter:is_ride_display run function ordered_splinter:sword/isaiah/remove_display_in
scoreboard players add @s wool_purple.display 1
execute as @s[tag=!wool_purple.isaiah_eye_raycast_ready] if score @s wool_purple.display matches 30 run function ordered_splinter:sword/isaiah/summon_raycast