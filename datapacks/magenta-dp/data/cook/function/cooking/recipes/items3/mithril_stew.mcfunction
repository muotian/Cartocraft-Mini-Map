#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.mithril_stew.name"}],\
lore:[[{translate:"effect.minecraft.resistance",color:blue,italic:false},{text:" (00:30)",color:blue,italic:false}],\
[{translate:"magenta.item.mithril_stew.lore",color:blue,italic:false},{text:" (00:30)",color:blue,italic:false}]],\
item_model:"magenta:mithril_stew",\
food:{nutrition:8,saturation:10,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"resistance",amplifier:0,duration:600,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 200
