function ordered_splinter:particle/basic_bolt
function ordered_splinter:sword/blade_of_finality/tutorial_bolt_dir
scoreboard players set $tutorial wool_purple.bolt 0
execute positioned ^ ^ ^2 rotated as @e[tag=wool_purple.bolt_dir,limit=1,sort=random] run function ordered_splinter:sword/blade_of_finality/tutorial_iterate
scoreboard players set $tutorial wool_purple.bolt 0
execute positioned ^ ^ ^2 rotated as @e[tag=wool_purple.bolt_dir,limit=1,sort=random] run function ordered_splinter:sword/blade_of_finality/tutorial_iterate
scoreboard players set $tutorial wool_purple.bolt 0
execute positioned ^ ^ ^2 rotated as @e[tag=wool_purple.bolt_dir,limit=1,sort=random] run function ordered_splinter:sword/blade_of_finality/tutorial_iterate