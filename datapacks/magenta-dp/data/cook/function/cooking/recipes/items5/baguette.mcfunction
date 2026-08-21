#

summon item ~ ~1 ~ {Item:{id:"copper_pickaxe",\
count:1,components:{\
item_model:"magenta:baguette",max_stack_size:1,custom_data:{baguette:1b}\
,item_name:{"translate": "magenta.item.baguette.name","color": "gold"}\
,lore:[{translate: "magenta.item.baguette.lore_1",color:"white",italic:false},\
{translate: "magenta.item.baguette.lore_2",color:"white",italic:false},\
{translate: "magenta.item.baguette.lore_3",color:"white",italic:false}]\
,attribute_modifiers:[\
{type:"minecraft:attack_damage",amount:5,operation:"add_value",slot:"mainhand",id:"magenta.baguette",display:{type:"override",value:[{"text":" 6 ","color":"dark_green"},{"translate":"attribute.name.attack_damage","color":"dark_green"}]}},\
{type:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand",id:"magenta.baguette",display:{type:"override",value:[{"text":" 1.6 ","color":"dark_green"},{"translate":"attribute.name.attack_speed","color":"dark_green"}]}},\
{type:"minecraft:entity_interaction_range",amount:2,operation:"add_value",slot:"mainhand",id:"magenta.baguette",display:{type:"override",value:[{"text":" +2 ","color":"blue"},{"translate":"attribute.name.entity_interaction_range","color":"blue"}]}}]\
,unbreakable:{},tooltip_display:{hidden_components:["unbreakable"]}, \
blocks_attacks:{damage_reductions:[{type:"mob_attack",base:0,factor:0.8},{type:"#minecraft:is_projectile",base:99999,factor:1,horizontal_blocking_angle:120}],block_sound:"entity.player.attack.sweep"}}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 600

