item replace entity caba-0-0-0-1 container.0 from block ~ ~ ~ container.10
data modify storage light_green:enchant enchant set from block ~ ~ ~ Items[{Slot:13b}].components."minecraft:stored_enchantments"
data modify entity caba-0-0-0-1 item.components."minecraft:enchantments" merge from storage light_green:enchant enchant
item replace block ~ ~ ~ container.16 from entity caba-0-0-0-1 container.0