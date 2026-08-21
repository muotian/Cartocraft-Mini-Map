execute if score $adapt_loop_max light_green.main.math matches 1.. run scoreboard players add $adapt_loop_value light_green.main.math 1
execute if score $adapt_loop_max light_green.main.math matches ..-1 run scoreboard players remove $adapt_loop_value light_green.main.math 1
execute on attacker run tag @s add light_green.ready_to.target
execute unless entity @n[tag=light_green.ready_to.target,distance=..50] at @s as @n[type=!#light_green:no_hp,type=!player,distance=..50] run tag @s add light_green.ready_to.target
execute at @s facing entity @n[tag=light_green.ready_to.target] feet rotated ~ 0 positioned ^ ^ ^-1 run function light_green:item/golem/mod/adapt/bullet/summon {tag:hoglin_target}
execute as @n[tag=light_green.ready_to.target,distance=..50] run tag @s remove light_green.ready_to.target
execute unless score $adapt_loop_value light_green.main.math = $adapt_loop_max light_green.main.math run function light_green:item/golem/mod/adapt/bullet/hoglin_target