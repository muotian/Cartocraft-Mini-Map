#

give @s copper_sword[item_model="magenta:cook_knife",max_stack_size=1,custom_data={cook_knife:1b},consumable={consume_seconds:100000,animation:"none",has_consume_particles:false}\
,item_name={"translate": "magenta.item.cook_knife.name","color": "gold"} \
,lore=[{translate: "magenta.item.cook_knife.lore_1",color:"white",italic:false},\
{translate: "magenta.item.cook_knife.lore_2",color:"white",italic:false}],\
tool={rules:[{blocks:"#mineable/axe",speed:4}]} \
,attribute_modifiers=[\
{type:"minecraft:attack_damage",amount:4,operation:"add_value",slot:"mainhand",id:"magenta.cook_knife",display:{type:"override",value:[{"text":" 5 ","color":"dark_green"},{"translate":"attribute.name.attack_damage","color":"dark_green"}]}},\
{type:"minecraft:attack_speed",amount:-2,operation:"add_value",slot:"mainhand",id:"magenta.cook_knife",display:{type:"override",value:[{"text":" 2 ","color":"dark_green"},{"translate":"attribute.name.attack_speed","color":"dark_green"}]}}]\
,unbreakable={},tooltip_display={hidden_components:["unbreakable"]},enchantments={"cook:god_of_cooking_blessing":1}]
