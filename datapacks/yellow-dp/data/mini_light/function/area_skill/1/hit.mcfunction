# 執行者、執行位置是那團霧
tag @e[type=#mini_light:monster,dx=0,dy=0,dz=0] add mini_light.target
execute as @e[tag=mini_light.target] run damage @s 8 indirect_magic
execute at @e[tag=mini_light.target] run particle dust_color_transition{from_color:[0.000,0.561,0.094],scale:4,to_color:[0.000,0.000,0.000]} ~ ~1 ~ .5 .5 .5 1 10 normal
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.8 2
tag @e remove mini_light.target
kill @s