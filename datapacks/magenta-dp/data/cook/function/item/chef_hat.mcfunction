#

give @s leather_helmet[item_model="magenta:chef_hat",max_stack_size=1,custom_data={chef_hat:1b},\
item_name={"translate": "magenta.item.chef_hat.name","color": "green"},\
lore=[{translate:"magenta.item.chef_hat.lore",color:white,italic:false}],\
equippable={slot:"head"}, \
attribute_modifiers=[\
{type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"magenta.chef_hat",display:{type:"override",value:[{"text":" +2 ","color":"blue"},{"translate":"attribute.name.armor","color":"blue"}]}}],\
unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
