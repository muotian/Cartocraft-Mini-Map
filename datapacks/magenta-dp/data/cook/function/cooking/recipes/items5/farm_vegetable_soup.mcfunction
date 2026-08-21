#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.farm_vegetable_soup.name"}],\
lore:[[{translate:"effect.minecraft.saturation",color:blue,italic:false},{text:" (00:20)",color:blue,italic:false}],\
[{translate:"effect.minecraft.regeneration",color:blue,italic:false},{text:" (05:00)",color:blue,italic:false}]],\
item_model:"magenta:farm_vegetable_soup",\
food:{nutrition:9,saturation:14,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:5,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"saturation",amplifier:0,duration:400,show_particles:false,show_icon:true},{id:"regeneration",amplifier:0,duration:6000,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 400
