# 執行者、執行位置是怪物
execute rotated 0 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated 90 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated -90 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated 180 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon

execute rotated 45 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated 135 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated -45 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon
execute rotated -135 0 anchored eyes run function mini_light:monster/super_evoker/dark_chain/summon

tag @s add this
execute as @e[type=evoker_fangs] at @s on origin if entity @s[tag=this] run kill @n[type=evoker_fangs]
tag @s remove this