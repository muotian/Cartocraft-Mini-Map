#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.amber_demon_meat.name"}],\
lore:[[{translate:"effect.minecraft.absorption",color:blue,italic:false},{text:"II (10:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.resistance",color:blue,italic:false},{text:"III (01:00)",color:blue,italic:false}]],\
item_model:"magenta:amber_demon_meat",\
food:{nutrition:8,saturation:12,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"absorption",amplifier:1,duration:12000,show_particles:false,show_icon:true},{id:"resistance",amplifier:2,duration:1200,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 200
