execute as @e[tag=light_green.hand_cannon.hit,distance=..50] if entity @s[tag=light_green.boss.big_hoglin,type=ravager] run function light_green:mob/boss/big_hoglin/dirt_armor/clear_water
$execute as @e[tag=light_green.hand_cannon.hit,distance=..50,type=!player] run damage @s 1 light_green:laser by @p[scores={light_green.player_id=$(id)},distance=..50]
execute as @e[tag=light_green.hand_cannon.hit,distance=..50,type=!player] run effect give @s slowness 2 3 false
execute as @e[tag=light_green.hand_cannon.hit,distance=..50,type=player] run effect give @s speed 5 1 false
execute as @e[tag=light_green.hand_cannon.hit,distance=..50,type=player] run effect give @s regeneration 5 0 false
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run tag @s remove light_green.hand_cannon.hit