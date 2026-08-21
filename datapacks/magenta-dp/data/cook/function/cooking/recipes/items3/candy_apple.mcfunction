#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.candy_apple.name"}],\
lore:[[{translate:"effect.minecraft.speed",color:blue,italic:false},{text:"II (03:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.haste",color:blue,italic:false},{text:" (03:00)",color:blue,italic:false}]],\
item_model:"magenta:candy_apple",\
food:{nutrition:5,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"speed",amplifier:1,duration:3600,show_particles:false,show_icon:true},{id:"haste",amplifier:0,duration:3600,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 160

