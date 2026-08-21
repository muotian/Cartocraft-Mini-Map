
## movement
execute if score @s white.duration matches 30..55 at @s run function white:move/sovereign_blade/blade/3b
execute if score @s white.duration matches 35..50 at @s run function white:move/sovereign_blade/blade/3b
execute if score @s white.duration matches 40..45 at @s run function white:move/sovereign_blade/blade/3b

## fx
execute if score @s white.duration matches 35 run playsound white:sovereign_blade_pull_up master @a ~ ~ ~ 2 1
execute if score @s white.duration matches 45..55 run data merge entity @s {transformation: {left_rotation: [-0.27059802f, -0.65328145f, 0.27059802f, 0.65328145f]}, start_interpolation: 0, interpolation_duration: 15}
execute if score @s white.duration matches 65 run function white:move/sovereign_blade/blade/3c