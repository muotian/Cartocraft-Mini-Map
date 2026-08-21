#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.meat_pie.name"}],\
lore:[[{translate:"effect.minecraft.strength",color:blue,italic:false},{text:" (02:00)",color:blue,italic:false}]],\
item_model:"magenta:meat_pie",\
food:{nutrition:9,saturation:16,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"strength",amplifier:0,duration:2400,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 240

