#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.witch_broth.name"}],\
lore:[[{translate:"magenta.item.witch_broth.lore",color:blue,italic:false},{text:" (10:00)",color:blue,italic:false}]],\
item_model:"magenta:witch_broth",\
food:{nutrition:3,saturation:4,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 300
