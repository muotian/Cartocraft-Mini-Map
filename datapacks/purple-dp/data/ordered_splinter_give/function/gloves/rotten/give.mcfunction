$item replace entity 0-0-0-0-2 container.0 with stick[item_model="weapon/$(type)/$(set)",custom_data={weapon:{damage:$(weapon),type:$(type),set:$(set),time:$(time),weapon_effect_damage:$(weapon_effect_damage)}},minecraft:attack_range={min_reach:0.0,max_reach:0.0,hitbox_margin:0.0,mob_factor:0.0,min_creative_reach:0.0,max_creative_reach:0.0},piercing_weapon={},enchantments={"ordered_splinter_main:left_click":1},enchantment_glint_override=false,max_stack_size=1,\
    custom_name={"translate":"item.gloves.rotten",color:"$(color)",italic:false},\
    lore=[{"text":""},\
    {"text":"💎","color":"gray","italic":false,extra:[{"translate":"item.lore.quality",italic:false,color:"gray"},$(quality_text)]},\
    {"text":"⚔","color":"gray","italic":false,extra:[{"translate":"item.lore.weapon_type",italic:false,color:"gray"},{"translate":"weapon_type.gloves",italic:false,color:"white"}]},\
    {"text":"🗡","color":"gray","italic":false,extra:[{"translate":"item.lore.damage",italic:false,color:"gray"},{"text":"$(weapon_lore)","color":"white"}]},\
    {"text":""},\
    {"text":"🔥","color":"gray","italic":false,extra:[{"translate":"item.lore.ability",italic:false,color:"gray"}]},\
    {"translate":"item.ability.tetanus","italic":false,"color":gray,extra:[{"text":"25% ","italic":false,"color":"white"},{"translate":"item.ability.tetanus_lore","italic":false,"color":"white"},{"text":"($(weapon_effect_damage_lore)🗡)","italic":false,"color":gray},{"text":"($(time)","italic":false,"color":gray},{"translate":"main.time.s","italic":false,"color":gray},{"text":")","italic":false,"color":gray}]}]]