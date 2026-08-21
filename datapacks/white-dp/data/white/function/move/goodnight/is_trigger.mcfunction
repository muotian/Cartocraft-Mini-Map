
execute if entity @s[tag=white.move.goodnight.dizzy] run return 1
execute if items entity @s weapon.offhand *[custom_data~{white:{item:goodnight}}] if predicate white:flags/is_sneak if predicate white:flags/is_on_ground unless score @s white.move.goodnight.cd matches 1.. if entity @s[x_rotation=85.0..90.0] run return 1
return fail