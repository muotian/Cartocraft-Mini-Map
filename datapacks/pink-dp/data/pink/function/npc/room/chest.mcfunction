#
item replace block ~ ~ ~ container.0 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.1 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.2 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.3 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.4 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.5 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.6 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.7 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.8 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.9 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.17 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.18 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.19 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.20 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.21 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.22 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.23 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.24 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.25 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]
item replace block ~ ~ ~ container.26 with pink_wool[enchantments={aqua_affinity:1},tooltip_display={hidden_components:[attribute_modifiers,enchantments]}]

item replace block ~ ~ ~ container.13 with clock[custom_name=["",{"text":"","italic":false},{"text":"1","color":"black","shadow_color":-1,obfuscated:true,"italic":false},{translate:"item.pink.black_hole.name_","italic":false,"color":"black","shadow_color":-1},{"text":"1","color":"black","shadow_color":-1,obfuscated:true,"italic":false}],lore=[[{translate:"item.pink.black_hole.lore1","italic":false,"color":"dark_gray"}],"",["",{"text":" >","italic":false,"color":"yellow"},{"text":" ","italic":false,"color":"green"},{translate:"item.pink.type","italic":false,"color":"white"},{"text":"|","italic":false,"color":"gray"},{"text":"|","italic":false,"color":"green"},{"text":"| ","italic":false,"color":"gray"},{translate:"item.pink.ultimate_skill","italic":false,"color":"yellow"}],["",{"text":" > ","italic":false,"color":"yellow"},{translate:"item.pink.when_cast","italic":false,"color":"white"}],["",{"text":"  >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{"text":" ","italic":false},{translate:"item.pink.black_hole.lore2","italic":false,"color":"white"}],["",{"text":"  >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{"text":" ","italic":false},{translate:"item.pink.black_hole.lore3","italic":false,"color":"white"}],["",{"text":"  >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{"text":" ","italic":false},{translate:"item.pink.black_hole.lore4","italic":false,"color":"white"}],["",{"text":"  >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{"text":" ","italic":false},{translate:"item.pink.black_hole.lore5","italic":false,"color":"white"},{text:"\u1001","font":"pink:mana_bar",italic:false,color:white},{translate:"item.pink.black_hole.lore6","italic":false,"color":"white"}],["",{"text":"  >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{"text":" ","italic":false},{translate:"item.pink.black_hole.lore7","italic":false,"color":"white"}]],custom_data={pink_magic:1b,pink_skill_type:3,pink_skill_id:4,enchantment:1b,upgrade:0,t:"black_hole",lore:{name:"item.pink.black_hole.name_",v:8}},minecraft:item_model="pink:skills/black_hole",enchantment_glint_override=true,minecraft:tooltip_style="pink:bh"]

#
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 70
particle flash{color:[1.000,1.000,1.000,0.8]} ~ ~ ~ 2.2 2.2 2.2 0 30

playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 0.8 0.8

effect give @a darkness 3 0 true
effect give @a night_vision 3 0 true

