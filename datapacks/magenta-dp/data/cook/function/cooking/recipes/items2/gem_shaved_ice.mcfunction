#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.gem_shaved_ice.name"}],\
lore:[[{translate:"effect.minecraft.speed",color:blue,italic:false},{text:"III (05:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.strength",color:blue,italic:false},{text:"III (05:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.regeneration",color:blue,italic:false},{text:"III (05:00)",color:blue,italic:false}]],\
item_model:"magenta:gem_shaved_ice",\
food:{nutrition:4,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"speed",amplifier:2,duration:6000,show_particles:false,show_icon:true},{id:"strength",amplifier:2,duration:6000,show_particles:false,show_icon:true},{id:"regeneration",amplifier:2,duration:6000,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 100
