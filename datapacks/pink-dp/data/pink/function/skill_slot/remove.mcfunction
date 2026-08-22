#
summon item ~ ~ ~ {Item:{id:"stone"},Tags:["new","_"],PickupDelay:30,Motion:[0.0,0.18,0.0]}

item replace entity @n[tag=_,tag=new] container.0 from entity @n[tag=this,type=item] container.0
item replace entity @s container.0 with black_wool[max_stack_size=1]



tag @e[type=item,tag=this] remove this


#
execute as @n[tag=skill_slot_interaction] on attacker run playsound minecraft:entity.item_frame.remove_item player @s ~ ~ ~ 1 1


