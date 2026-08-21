item replace entity caba-0-0-0-1 container.0 with clock[item_model="light_green:golem_core",max_stack_size=1,custom_name={"translate":"light_green:golem_core",italic:false,color:dark_purple},lore=[{"translate":"light_green:golem_core.lore",italic:false,color:gray}]]
summon item ~ ~ ~ {Item:{id:egg},Tags:["light_green.new.mob"],Glowing:true}
item replace entity @n[tag=light_green.new.mob] container.0 from entity caba-0-0-0-1 container.0
tag @n[tag=light_green.new.mob] remove light_green.new.mob