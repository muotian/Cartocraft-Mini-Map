#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.oatmeal.name"}],\
lore:[[{translate:"effect.minecraft.absorption",color:blue,italic:false},{text:"II ",color:blue,italic:false},{translate:"effect.duration.infinite",color:blue,italic:false}]],\
item_model:"magenta:oatmeal",\
food:{nutrition:5,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:5,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"absorption",amplifier:1,duration:-1,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 160

