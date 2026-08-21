#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.mithril_ice.name"}],\
lore:[[{translate:"effect.minecraft.absorption",color:blue,italic:false},{text:"V (01:00)",color:blue,italic:false}]],\
item_model:"magenta:mithril_ice",\
food:{nutrition:4,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"absorption",amplifier:4,duration:1200,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 100
