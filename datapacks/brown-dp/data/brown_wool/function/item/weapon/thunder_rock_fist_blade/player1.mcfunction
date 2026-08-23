# 雷岩破拳刃
execute if score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. at @s run function brown_wool:item/weapon/thunder_rock_fist_blade/player2

execute if score @s brown_wool.thunder_rock_fist_blade1 matches 1.. at @s run function brown_wool:item/weapon/thunder_rock_fist_blade/player3

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.thunder_rock_fist_blade": true}}}} run advancement revoke @s only brown_wool:brown_wool.thunder_rock_fist_blade

