# 蒼霆鎮岳槍:技能冷卻
execute if score @s brown_wool.cangting_zhenyue_spear.cd matches 1.. at @s run function brown_wool:item/weapon/cangting_zhenyue_spear/player3


# 蒼霆鎮岳槍:技能
execute if score @s brown_wool.cangting_zhenyue_spear1 matches 1.. at @s run function brown_wool:item/weapon/cangting_zhenyue_spear/player2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","advancements": {"brown_wool:brown_wool.cangting_zhenyue_spear": true}}}} run advancement revoke @s only brown_wool:brown_wool.cangting_zhenyue_spear

execute if entity @s[tag=brown_wool.cangting_zhenyue_spear0] at @s run function brown_wool:item/weapon/cangting_zhenyue_spear/cast



