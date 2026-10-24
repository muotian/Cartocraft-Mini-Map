#> assist:jump_pad/jump

advancement revoke @s only assist:jump_pad.jump

scoreboard players operation $x player_motion.api.launch = @s assist.jump_pad.vx
scoreboard players operation $y player_motion.api.launch = @s assist.jump_pad.vy
scoreboard players operation $z player_motion.api.launch = @s assist.jump_pad.vz
function player_motion:api/launch_global_xyz
