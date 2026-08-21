execute if entity @s[advancements={light_green:blocked=true}] run return fail
title @s times 0t 3s 2s
title @s title [{font: "light_green:custom", text: "\ue005","color":"#5e2218",shadow_color:0}]
effect give @s slowness 5 1 false
effect give @s mining_fatigue 5 0 true
playsound minecraft:entity.slime.squish player @a ~ ~ ~ 2 0
execute as @e[tag=light_green.boss.big_hoglin,limit=1,type=ravager,distance=..50] unless score @s light_green.boss.attack_type matches 1.. run function light_green:mob/boss/big_hoglin/skill/small_rush