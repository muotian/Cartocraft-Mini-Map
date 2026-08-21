#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.berry_honey_brew.name"}],\
lore:[[{translate:"effect.minecraft.jump_boost",color:blue,italic:false},{text:"III (03:00)",color:blue,italic:false}],\
[{translate:"effect.minecraft.speed",color:blue,italic:false},{text:" (03:00)",color:blue,italic:false}]],\
item_model:"magenta:berry_honey_brew",\
food:{nutrition:2,saturation:4,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:0.8,sound:"entity.generic.drink",\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"jump_boost",amplifier:2,duration:3600,show_particles:false,show_icon:true},{id:"speed",amplifier:0,duration:3600,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 160
