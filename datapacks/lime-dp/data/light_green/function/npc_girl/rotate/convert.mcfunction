execute unless score @s light_green.boss.attack_type matches 1.. run function light_green:npc_girl/rotate/looking_bottle
execute if score @s light_green.boss.attack_type matches 1 run function light_green:npc_girl/rotate/facing
execute if score @s light_green.boss.attack_type matches 2 run function light_green:npc_girl/rotate/right