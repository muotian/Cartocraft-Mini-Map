summon marker ~ ~ ~ {Tags:["soul_rend"]}
execute at @s as @e[type=marker,tag=soul_rend,sort=nearest,limit=1] run function ordered_splinter:particle/soul_rend_draw
