#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.meat_stew.name"}],\
lore:[[{translate:"effect.minecraft.resistance",color:blue,italic:false},{text:" (20:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.regeneration",color:blue,italic:false},{text:" (20:00)",color:blue,italic:false}]],\
item_model:"magenta:meat_stew",\
food:{nutrition:16,saturation:20,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:5,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"resistance",amplifier:0,duration:24000,show_particles:false,show_icon:true},{id:"regeneration",amplifier:0,duration:24000,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 480

