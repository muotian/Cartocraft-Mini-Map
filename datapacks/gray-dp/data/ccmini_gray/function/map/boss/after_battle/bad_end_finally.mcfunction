particle poof ~ ~0.5 ~ 0.3 0.3 0.3 0 50
function animated_java:gray_plot_boss/remove/all
scoreboard players set $gopr_skill_locked gray.map_event 1
execute as @a if score @s gray.gopr_mode matches 2 run function ccmini_gray:skills/grit_of_pristine_revival/take_off
execute as @a if score @s gray.gopr_mode matches 2 run scoreboard players set @s gray.gopr_mode 0