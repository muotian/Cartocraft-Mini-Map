tag @s add light_green.use_hand_cannon
schedule function light_green:player/advancement/hand_cannon/reback/0 1t
advancement revoke @s only light_green:use_hand_cannon
advancement revoke @s only light_green:use_off_hand_cannon
function light_green:item/golem/hand_cannon/looking_laser/0
scoreboard players set @s light_green.hand_cannon_cd 40
scoreboard players add @s light_green.hand_cannon 1
execute if score @s light_green.hand_cannon matches 5 run scoreboard players set @s light_green.hand_cannon 1