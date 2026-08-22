scoreboard players add $tutorial wool_purple.bolt 2

function ordered_splinter:particle/basic_bolt
function ordered_splinter:sword/blade_of_finality/tutorial_bolt_dir

execute if score $tutorial wool_purple.bolt matches ..12 if predicate ordered_splinter:50percentage rotated as @e[tag=wool_purple.bolt_dir,limit=1,sort=random] run function ordered_splinter:sword/blade_of_finality/tutorial_iterate
scoreboard players remove $tutorial wool_purple.bolt 1
execute if score $tutorial wool_purple.bolt matches ..16 positioned ^ ^ ^2 rotated as @e[tag=wool_purple.bolt_dir,limit=1,sort=random] run function ordered_splinter:sword/blade_of_finality/tutorial_iterate