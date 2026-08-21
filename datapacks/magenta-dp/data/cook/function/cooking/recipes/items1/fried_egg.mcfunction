#

execute at @s \
if items block ~ ~ ~ container.* #eggs \
run \
summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
item_name:[{translate:"magenta.item.fried_egg.name"}],\
item_model:"magenta:fried_egg",\
food:{nutrition:3,saturation:6,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:0.8,\
on_consume_effects:[{type:"minecraft:apply_effects",probability:0,effects:[]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}

execute at @s \
if items block ~ ~ ~ container.* #eggs \
run \
scoreboard players set @s MagentaFinish 60
