#

summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.rotten_broth.name"}],\
item_model:"magenta:rotten_broth",\
food:{nutrition:6,saturation:8,can_always_eat:false},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1.6,\
on_consume_effects:[{type:"minecraft:apply_effects",probability:0.2,effects:[{id:"hunger",amplifier:2,duration:600}]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}


scoreboard players set @s MagentaFinish 200
