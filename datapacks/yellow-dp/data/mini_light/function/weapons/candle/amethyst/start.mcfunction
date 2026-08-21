# 執行者、執行位置是源頭實體

scoreboard players set $glow_count mini_light.main 6
tag @s add mini_light.glow_origin

function mini_light:weapons/candle/amethyst/hit

tag @e[tag=mini_light.glow_hit] remove mini_light.glow_hit
tag @e[tag=mini_light.glow_next] remove mini_light.glow_next
tag @s remove mini_light.glow_origin
