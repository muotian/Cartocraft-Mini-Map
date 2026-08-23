give @s iron_sword[\
    attribute_modifiers=[\
        {amount:5, id:"base_attack_damage", type:"attack_damage", operation:"add_value", slot:"mainhand"},\
        {amount:-1.5, id:"base_attack_speed", type:"attack_speed", operation:"add_value", slot:"mainhand"},\
        {amount:0.5, id:"entity_interaction_range", type:"entity_interaction_range", operation:"add_multiplied_base", slot:"mainhand"},\
        {amount:-0.4, id:"max_health", type:"max_health", operation:"add_multiplied_total", slot:"head"},{amount:0.6, id:"movement_speed", type:"movement_speed", operation:"add_multiplied_total", slot:"head"}], \
    enchantments={"red_wool:shard_sword":1, "red_wool:speed_weapon":1}, \
    unbreakable={},\
    item_model="red_wool:shard_sword",\
    item_name=[{"translate":"red_wool.weapon.shard_sword", "color":"dark_red", bold:true}],\
    lore=["",\
        {"translate":"red_wool.weapon.active", color:blue, bold:true},\
        {"translate":"red_wool.weapon.shard_sword.lore1", color:gray},\
        {"translate":"red_wool.weapon.shard_sword.lore2", color:gray},\
        {"translate":"red_wool.weapon.shard_sword.lore3", color:gray},\
    ],\
    blocks_attacks={block_delay_seconds:0.5},\
    equippable={slot:"head", swappable:false},\
    custom_data={strong_attack:0},\
    minimum_attack_charge=0.5,\
]