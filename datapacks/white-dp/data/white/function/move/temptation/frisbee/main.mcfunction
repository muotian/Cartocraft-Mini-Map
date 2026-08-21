
scoreboard players add @s white.duration 1

execute at @s run function white:move/temptation/frisbee/2
execute at @s run function white:move/temptation/frisbee/2
execute at @s run function white:move/temptation/frisbee/2
execute at @s run function white:move/temptation/frisbee/2
execute at @s run function white:move/temptation/frisbee/2

execute if score @s white.duration matches 100.. run function white:move/temptation/frisbee/clear

# fx
scoreboard players operation #mod white.main = @s white.duration
scoreboard players operation #mod white.main %= #20 white.main
execute if score #mod white.main matches 1 on passengers run data merge entity @s {transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]},start_interpolation:0,interpolation_duration:5}
execute if score #mod white.main matches 6 on passengers run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]},start_interpolation:0,interpolation_duration:5}
execute if score #mod white.main matches 11 on passengers run data merge entity @s {transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]},start_interpolation:0,interpolation_duration:5}
execute if score #mod white.main matches 16 on passengers run data merge entity @s {transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]},start_interpolation:0,interpolation_duration:5}