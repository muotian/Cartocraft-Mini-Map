#
execute as @e[type=vex,tag=!pink_mobs,distance=..15] at @s run function pink:monster/gravity/vex_summon
execute as @e[tag=pink.gravity.vex,type=vex] at @s run function pink:monster/gravity/vex_tick

execute if entity @e[type=evoker_fangs,tag=!pink_mobs,distance=..20] run function pink:monster/gravity/gravity_skill


# player 
