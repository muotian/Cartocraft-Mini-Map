#
execute if data entity @s[tag=pink_skill_slot_1_interaction] interaction at @s on target if items entity @s weapon.mainhand *[custom_data~{pink_skill_type:1}] as @n[tag=pink_skill_slot_1_interaction] run function pink:skill_slot/set1 {id:1}
execute if data entity @s[tag=pink_skill_slot_2_interaction] interaction at @s on target if items entity @s weapon.mainhand *[custom_data~{pink_skill_type:2}] as @n[tag=pink_skill_slot_2_interaction] run function pink:skill_slot/set1 {id:2}
execute if data entity @s[tag=pink_skill_slot_3_interaction] interaction at @s on target if items entity @s weapon.mainhand *[custom_data~{pink_skill_type:3}] as @n[tag=pink_skill_slot_3_interaction] run function pink:skill_slot/set1 {id:3}

execute if data entity @s[tag=pink_skill_slot_1_interaction] attack run function pink:skill_slot/remove1 {id:1}
execute if data entity @s[tag=pink_skill_slot_2_interaction] attack run function pink:skill_slot/remove1 {id:2}
execute if data entity @s[tag=pink_skill_slot_3_interaction] attack run function pink:skill_slot/remove1 {id:3}



data remove entity @s interaction
data remove entity @s attack

#
