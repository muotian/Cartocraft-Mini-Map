execute if entity @s[tag=light_green.have_item] if items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.13 enchanted_book unless items block ~ ~ ~ container.16 * run return run function light_green:enchantment_add/gui/clear_item
function light_green:enchantment_add/gui/book
execute if items block ~ ~ ~ container.10 enchanted_book if items block ~ ~ ~ container.13 enchanted_book[custom_data~{light_green.fill_item:1}] run function light_green:enchantment_add/gui/enchanted_book_replace
execute if items block ~ ~ ~ container.16 enchanted_book if items block ~ ~ ~ container.13 enchanted_book[custom_data~{light_green.fill_item:1}] run function light_green:enchantment_add/gui/enchanted_book_replace2
execute if items block ~ ~ ~ container.16 * run function light_green:enchantment_add/gui/reback_item
execute unless items block ~ ~ ~ container.10 * run return run function light_green:enchantment_add/gui/no_item
execute unless items block ~ ~ ~ container.13 enchanted_book run return run function light_green:enchantment_add/gui/no_item
execute if items block ~ ~ ~ container.13 enchanted_book[custom_data~{light_green.fill_item:1}] run return run function light_green:enchantment_add/gui/no_item
execute if items block ~ ~ ~ container.10 * if items block ~ ~ ~ container.13 enchanted_book unless items block ~ ~ ~ container.16 * run function light_green:enchantment_add/gui/add_enchant/0
function light_green:enchantment_add/gui/have_item
item modify block ~ ~ ~ container.16 light_green:enchant