#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.mushroom_risotto.name"}],\
lore:[[{translate:"effect.minecraft.night_vision",color:blue,italic:false},{text:" (10:00)",color:blue,italic:false}]],\
item_model:"magenta:mushroom_risotto",\
food:{nutrition:5,saturation:7,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"night_vision",amplifier:0,duration:12000,show_particles:false,show_icon:true}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 120
