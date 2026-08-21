#

give @s leather_chestplate[max_stack_size=1,custom_data={chef_uniform:1b},\
item_name={"translate": "magenta.item.chef_uniform.name","color": "green"},\
lore=[{translate:"magenta.item.chef_uniform.lore",color:white,italic:false}],\
trim={material:"iron",pattern:"bolt"}, \
base_color="white", dyed_color=16777215, \
attribute_modifiers=[\
{type:"minecraft:armor",amount:4,operation:"add_value",slot:"chest",id:"magenta.chef_uniform",display:{type:"override",value:[{"text":" +4 ","color":"blue"},{"translate":"attribute.name.armor","color":"blue"}]}}],\
unbreakable={},tooltip_display={hidden_components:["unbreakable","dyed_color","trim"]}]

