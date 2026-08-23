execute if entity @a[limit=1, distance = ..4] if items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with iron_sword[\
    attribute_modifiers=[{amount:12, id:"base_attack_damage", slot:"mainhand", operation:"add_value", type:"attack_damage"}],\
    enchantments={"red_wool:dealt_true_explosion":6, "red_wool:speed_weapon":2}\
]
execute unless entity @a[limit=1, distance = ..4] if items entity @s weapon.mainhand iron_sword run item replace entity @s weapon.mainhand with bow[\
    enchantments={"red_wool:dealt_true_explosion":8, "power":4}\
]
