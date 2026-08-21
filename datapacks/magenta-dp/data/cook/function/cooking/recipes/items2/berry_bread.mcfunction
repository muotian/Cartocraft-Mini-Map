#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.berry_bread.name"}],\
lore:[[{translate:"effect.minecraft.absorption",color:blue,italic:false},{text:"I (00:30)",color:blue,italic:false}]],\
item_model:"magenta:berry_bread",\
food:{nutrition:7,saturation:6,can_always_eat:false},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"absorption",amplifier:0,duration:600,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 100
