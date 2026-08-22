tag @s add gray.user

scoreboard players reset $x player_motion.api.launch
scoreboard players reset $y player_motion.api.launch
scoreboard players reset $z player_motion.api.launch

#按照按鍵調整位移方向
scoreboard players set $x gray.moving_direction 0
scoreboard players set $y gray.moving_direction 0
execute if predicate ccmini_gray:move_forward run scoreboard players add $y gray.moving_direction 1
execute if predicate ccmini_gray:move_backward run scoreboard players remove $y gray.moving_direction 1
execute if predicate ccmini_gray:move_right run scoreboard players add $x gray.moving_direction 1
execute if predicate ccmini_gray:move_left run scoreboard players remove $x gray.moving_direction 1

execute if score $y gray.moving_direction matches 1 if score $x gray.moving_direction matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_f
execute if score $y gray.moving_direction matches -1 if score $x gray.moving_direction matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_b
execute if score $x gray.moving_direction matches 1 if score $y gray.moving_direction matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_r
execute if score $x gray.moving_direction matches -1 if score $y gray.moving_direction matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_l
execute if score $y gray.moving_direction matches 1 if score $x gray.moving_direction matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_fr
execute if score $y gray.moving_direction matches 1 if score $x gray.moving_direction matches -1 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_fl
execute if score $y gray.moving_direction matches -1 if score $x gray.moving_direction matches 1 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_br
execute if score $y gray.moving_direction matches -1 if score $x gray.moving_direction matches -1 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_bl

#沒移動預設往後
execute if score $y gray.moving_direction matches 0 if score $x gray.moving_direction matches 0 run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/rightclick/move_f
#音效
playsound minecraft:entity.puffer_fish.blow_out player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.attack.sweep ambient @a ~ ~ ~ 0.5 0.5

#躲避
scoreboard players set @s gray.gopr.invincibility.frames 8

function player_motion:api/launch_xyz
scoreboard players set @s gray.gopr.dodge.cd 10

tag @s remove gray.user