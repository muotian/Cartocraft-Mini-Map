scoreboard players reset @s icer.run_craft
dialog show @s icer:craft

execute if score count icer.pyrowind_fragment matches 2.. run loot spawn ~ ~ ~ loot ordered_splinter:prop/heart_of_pyrowind
scoreboard players reset count icer.pyrowind_fragment