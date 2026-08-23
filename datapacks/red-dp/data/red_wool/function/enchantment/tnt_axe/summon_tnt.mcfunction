execute store result score tnt_axe red_wool.tmp run clear @p gunpowder 0
execute if score tnt_axe red_wool.tmp matches ..0 run return fail

clear @p gunpowder 1

summon tnt ~ ~ ~ {fuse:41,explosion_power:0,Tags:["red_wool.tnt_axe"]}