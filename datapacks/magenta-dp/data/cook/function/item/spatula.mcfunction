#

give @s stone_shovel[item_model="magenta:spatula",max_stack_size=1,custom_data={spatula:1b},consumable={consume_seconds:100000,animation:"none",has_consume_particles:false},\
item_name={"translate": "magenta.item.spatula.name","color": "green"},\
lore=[\
[{"translate": "magenta.advancement.spatula_2-1","color": "white", italic:false},{"keybind": "key.drop"},{"translate": "magenta.advancement.spatula_2-2","color": "white"}],\
{"translate": "magenta.advancement.spatula_3","color": "white", italic:false},\
{"translate": "magenta.advancement.spatula_4","color": "white", italic:false},\
{"translate": "magenta.advancement.spatula_6","color": "aqua", italic:false}\
],\
attribute_modifiers=[\
{type:"minecraft:attack_damage",amount:4,operation:"add_value",slot:"mainhand",id:"magenta.spatula",display:{type:"override",value:[{"text":" 5 ","color":"dark_green"},{"translate":"attribute.name.attack_damage","color":"dark_green"}]}},\
{type:"minecraft:attack_speed",amount:-2.6,operation:"add_value",slot:"mainhand",id:"magenta.spatula",display:{type:"override",value:[{"text":" 1.4 ","color":"dark_green"},{"translate":"attribute.name.attack_speed","color":"dark_green"}]}}],unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]

