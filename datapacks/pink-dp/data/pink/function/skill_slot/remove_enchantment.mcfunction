item modify entity @s container.0 pink:range_remove


# Star 1 I
execute if items entity @s container.1 *[custom_data~{pink_skill_type:1,pink_skill_id:1,upgrade:0}] run item modify entity @s container.0 pink:skills_enchantment_remove/star_1_1

# Black 1 I
execute if items entity @s container.1 *[custom_data~{pink_skill_type:1,pink_skill_id:2,upgrade:0}] run item modify entity @s container.0 pink:skills_enchantment_remove/black_1_1

# White 1 I
execute if items entity @s container.1 *[custom_data~{pink_skill_type:1,pink_skill_id:3,upgrade:0}] run item modify entity @s container.0 pink:skills_enchantment_remove/white_1_1
