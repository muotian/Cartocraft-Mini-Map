#> assist:jump_pad/jump

advancement revoke @s only assist:jump_pad.jump

execute if entity @s[tag=assist.jump_pad.safe_fall] run return 0

scoreboard players operation $x player_motion.api.launch = @s assist.jump_pad.vx
scoreboard players operation $y player_motion.api.launch = @s assist.jump_pad.vy
scoreboard players operation $z player_motion.api.launch = @s assist.jump_pad.vz
function player_motion:api/launch_global_xyz
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 0.75 0.75

function assist:jump_pad/safe_fall
