# 執行者、執行位置是怪物
summon area_effect_cloud ^ ^ ^ {Duration:20,Tags:["mini_light.dark_chain_hook","new"], custom_particle:{type:"block",block_state:"air"}}
data modify entity @e[tag=mini_light.dark_chain_hook,tag=new,limit=1] Owner set from entity @s UUID
execute run tp @e[tag=mini_light.dark_chain_hook,tag=new] ^ ^ ^ ~ ~ 

tag @e[tag=mini_light.dark_chain_hook,tag=new] remove new



