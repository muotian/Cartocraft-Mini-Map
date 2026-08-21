#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.pumpkin_soup.name"}],\
lore:[[{translate:"effect.minecraft.instant_health",color:blue,italic:false},{text:"I",color:blue,italic:false}]],\
item_model:"magenta:pumpkin_soup",\
food:{nutrition:3,saturation:4,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:0.8,\
on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"instant_health",amplifier:0,duration:1}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 140
