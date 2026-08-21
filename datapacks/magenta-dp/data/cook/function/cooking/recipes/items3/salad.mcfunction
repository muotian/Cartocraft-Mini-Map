#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.salad.name"}],\
lore:[[{translate:"effect.minecraft.health_boost",color:blue,italic:false},{text:" ",color:blue,italic:false},{translate:"effect.duration.infinite",color:blue,italic:false}]],\
item_model:"magenta:salad",\
food:{nutrition:6,saturation:10,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"health_boost",amplifier:0,duration:-1,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 60

