#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.pudding.name"}],\
lore:[[{translate:"effect.minecraft.regeneration",color:blue,italic:false},{text:" (00:30)",color:blue,italic:false}],\
[{translate:"magenta.item.pudding.lore",color:blue,italic:false},{text:" (00:30)",color:blue,italic:false}]],\
item_model:"magenta:pudding",\
food:{nutrition:6,saturation:8,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"regeneration",amplifier:0,duration:600,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 100

