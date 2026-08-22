# Remove
tag @s remove hold_pink_magic_staff

# F
execute if items entity @s weapon.offhand *[custom_data~{pink_magic_staff:1b}] if predicate pink:onground if predicate pink:shift at @s rotated ~ 0 run function pink:skill_slot/skill_slot




