# 執行者、執行位置是怪物
function mini_light:monster/super_evoker/dark_cloud/summon


tag @s add this
execute as @e[type=evoker_fangs] at @s on origin if entity @s[tag=this] run kill @n[type=evoker_fangs]
tag @s remove this