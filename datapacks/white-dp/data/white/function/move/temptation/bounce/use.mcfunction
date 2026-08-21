
execute unless block ~ ~ ~ #white:transparent run return fail

scoreboard players set #is_bounce white.main 0
execute if function white:move/temptation/bounce/is_x run function white:move/temptation/bounce/x
execute if function white:move/temptation/bounce/is_y run function white:move/temptation/bounce/y
execute if function white:move/temptation/bounce/is_z run function white:move/temptation/bounce/z
return run execute if score #is_bounce white.main matches 1