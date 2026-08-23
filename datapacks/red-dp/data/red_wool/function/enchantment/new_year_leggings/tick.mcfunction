execute if entity @s[tag = !red_wool.new_year_leggings, scores={red_wool.new_year_leggings=..0}] if predicate {condition:"entity_properties", entity:"this", predicate:{flags:{is_sneaking:true}}} run execute as @e[distance=..5, type = !#no_hp, type = !player] run damage @s 5 red_wool:true_explosion by @p
execute if entity @s[tag = !red_wool.new_year_leggings, scores={red_wool.new_year_leggings=..0}] if predicate {condition:"entity_properties", entity:"this", predicate:{flags:{is_sneaking:true}}} run execute as @e[distance=..5, type = !#no_hp, type = !player] run function red_wool:enchantment/dealt_true_explosion_particle
execute if entity @s[tag = !red_wool.new_year_leggings, scores={red_wool.new_year_leggings=..0}] if predicate {condition:"entity_properties", entity:"this", predicate:{flags:{is_sneaking:true}}} run scoreboard players set @s red_wool.new_year_leggings 20

execute if predicate {condition:"entity_properties", entity:"this", predicate:{flags:{is_sneaking:true}}} run tag @s add red_wool.new_year_leggings
execute if predicate {condition:"entity_properties", entity:"this", predicate:{flags:{is_sneaking:false}}} run tag @s remove red_wool.new_year_leggings
