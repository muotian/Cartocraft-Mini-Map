#

execute at @s \
if items block ~ ~ ~ container.0 beef run \
summon item ~ ~1 ~ {Item:{id:"poisonous_potato",\
count:1,components:{\
custom_name:[{translate:"item.minecraft.cooked_beef",color:white,italic:false}],\
item_model:"cooked_beef",\
food:{nutrition:100,saturation:1,can_always_eat:true},\
consumable:{animation:"eat",has_consume_particles:true,\
consume_seconds:1s,\
on_consume_effects:[{type:"minecraft:apply_effects",probability:0,effects:[]}]}\
}},PickupDelay:10000s,NoGravity:true,Invulnerable:true,Tags:["MagentaCookingFood"]}

execute at @s \
if items block ~ ~ ~ container.0 beef run \
scoreboard players set @s MagentaFinish 60
