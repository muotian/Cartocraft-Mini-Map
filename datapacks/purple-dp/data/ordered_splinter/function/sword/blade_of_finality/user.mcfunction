execute if score @s wool_purple.blade_of_finality matches 15 run effect give @s resistance 10 0 true
execute if score @s wool_purple.blade_of_finality matches 15 run playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 1
execute if score @s wool_purple.blade_of_finality matches 15 run particle flash{color:[0.56,0.83,1.00,1.00]} ~ ~ ~ 0 0 0 0 0
execute if score @s wool_purple.blade_of_finality matches 15 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated 45 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated 90 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated 135 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated 180 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated -135 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated -90 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 anchored feet rotated -45 0 run function ordered_splinter:sword/blade_of_finality/tutorial_start
execute if score @s wool_purple.blade_of_finality matches 15 run scoreboard players set @s wool_purple.blade_of_finality 0