give @s totem_of_undying[\
    attribute_modifiers=[{"amount":0.2, id:"offhand", operation:"add_multiplied_total", type:"attack_damage", slot:"offhand"}], \
    unbreakable={},\
    enchantments={"red_wool:totem_of_peace":1},\
    item_model="red_wool:totem_of_peace",\
    item_name=[{"translate":"red_wool.item.totem_of_peace", "color":"gold", bold:true}],\
    lore=["",\
        {"translate":"red_wool.weapon.passive", color:blue, bold:true},\
        {"translate":"red_wool.item.totem_of_peace.lore1", color:gray},\
        {"translate":"red_wool.item.totem_of_peace.lore2", color:gray},\
        {"translate":"red_wool.item.totem_of_peace.lore3", color:gray},\
    ],\
    death_protection={"death_effects":[{type:"apply_effects",effects:[{id:"resistance", amplifier:2, duration:100}, {id:"regeneration", amplifier:2, duration:100}, {id:"instant_health", amplifier:2, duration:1}]}]}\
]