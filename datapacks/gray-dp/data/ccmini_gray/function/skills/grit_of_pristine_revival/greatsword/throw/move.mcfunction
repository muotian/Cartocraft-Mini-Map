tp ^ ^ ^0.8
execute if function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/if_end run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/explosion
playsound entity.breeze.idle_air player @a ~ ~ ~ 0.5 1
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=gray.boss.can_break] run kill @s