item replace entity caba-0-0-0-1 container.0 with item_frame[entity_data={id:"minecraft:item_frame",Item:{id:"minecraft:diamond",count:1},ItemDropChance:0f,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["light_green","light_green.mob","light_green.enchant_table"]},item_model="light_green:enchant",custom_name={translate:"light_green:golem_enchant_table",italic:false}] 1
summon item ~ ~ ~ {Tags:["light_green.new.mob"],Item:{id:egg}}
item replace entity @n[tag=light_green.new.mob] container.0 from entity caba-0-0-0-1 container.0
tag @n[tag=light_green.new.mob] remove light_green.new.mob