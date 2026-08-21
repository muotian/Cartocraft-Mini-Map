execute if entity @e[tag=light_green.hand_cannon.hit,distance=..50] run scoreboard players add @p[tag=light_green.hand_cannon.user,distance=..50] light_green.hand_cannon_hit 1
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run damage @s 0.5 light_green:laser by @p[tag=light_green.hand_cannon.user,distance=..50]
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run effect give @s slowness 2 1 false
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] if entity @s[tag=light_green.boss.big_hoglin,type=ravager] run function light_green:mob/boss/big_hoglin/dirt_armor/clear_water
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run tag @s remove light_green.hand_cannon.hit