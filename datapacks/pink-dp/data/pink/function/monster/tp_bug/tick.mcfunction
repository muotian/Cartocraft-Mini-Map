#
particle dust{color:[0.412,0.000,0.820],scale:1.5} ~ ~.5 ~ .5 .5 .5 0 3 normal
particle dust{color:[0.741,0.000,0.000],scale:0.7} ~ ~ ~ .6 .6 .6 0 4 normal

# Hit
execute if predicate pink:hurt run function pink:monster/tp_bug/tp

# UD
execute if entity @s[tag=new] run function pink:monster/tp_bug/ud
