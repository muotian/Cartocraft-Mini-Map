#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.spicy_stew.name"}],\
lore:[[{translate:"effect.minecraft.fire_resistance",color:blue,italic:false},{text:" (10:00)",color:blue,italic:false}]],\
item_model:"magenta:spicy_stew",\
food:{nutrition:8,saturation:12,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:3,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"fire_resistance",amplifier:0,duration:12000,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 200
