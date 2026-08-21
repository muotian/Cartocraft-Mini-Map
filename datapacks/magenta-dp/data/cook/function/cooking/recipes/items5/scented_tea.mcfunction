#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.scented_tea.name"}],\
lore:[[{translate:"magenta.item.scented_tea.lore",color:blue,italic:false}], \
[{translate:"effect.minecraft.regeneration",color:blue,italic:false},{text:"II (00:10)",color:blue,italic:false}]],\
item_model:"magenta:scented_tea",\
food:{nutrition:1,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:0.8, sound:"entity.generic.drink",\
on_consume_effects:[{type:"remove_effects",effects:["slowness","mining_fatigue","nausea","blindness","hunger","weakness","poison","wither","levitation","unluck","darkness","wind_charged","weaving","oozing","infested"]}, \
{type:"minecraft:apply_effects",effects:[{id:"regeneration",amplifier:1,duration:200}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 320

