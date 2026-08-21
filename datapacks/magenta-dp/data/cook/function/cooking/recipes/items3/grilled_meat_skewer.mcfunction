#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.grilled_meat_skewer.name"}],\
lore:[[{translate:"effect.minecraft.instant_health",color:blue,italic:false},{text:"I",color:blue,italic:false}]],\
item_model:"magenta:grilled_meat_skewer",\
food:{nutrition:8,saturation:8,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"instant_health",amplifier:0,duration:1}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 80
