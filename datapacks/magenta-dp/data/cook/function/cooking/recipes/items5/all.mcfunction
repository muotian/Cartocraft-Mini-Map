#

execute at @s \
if items block ~ ~ ~ container.* #cook:raw_meats \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:cabbage_item"] \
if items block ~ ~ ~ container.* potato \
if items block ~ ~ ~ container.* brown_mushroom \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:spices"] \
run function cook:cooking/recipes/items5/meat_stew

execute at @s \
if items block ~ ~ ~ container.0 #flowers \
if items block ~ ~ ~ container.1 #flowers \
if items block ~ ~ ~ container.2 #flowers \
if items block ~ ~ ~ container.3 #flowers \
if items block ~ ~ ~ container.4 #flowers \
run function cook:cooking/recipes/items5/scented_tea

execute at @s \
if items block ~ ~ ~ container.* golden_apple \
if items block ~ ~ ~ container.* enchanting_table \
if items block ~ ~ ~ container.* bookshelf \
if items block ~ ~ ~ container.* experience_bottle \
if items block ~ ~ ~ container.* lapis_lazuli \
run function cook:cooking/recipes/items5/enchanted_golden_apple

execute at @s \
if items block ~ ~ ~ container.* glowstone_dust[custom_data={"magenta_flour":1}] \
if items block ~ ~ ~ container.* hay_block \
if items block ~ ~ ~ container.* #eggs \
if items block ~ ~ ~ container.* sugar \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:milk_bottle"] \
run function cook:cooking/recipes/items5/baguette

execute at @s \
if items block ~ ~ ~ container.* glowstone_dust[custom_data={"magenta_flour":1}] \
if items block ~ ~ ~ container.* hay_block \
if items block ~ ~ ~ container.* #eggs \
if items block ~ ~ ~ container.* sugar \
if items block ~ ~ ~ container.* milk_bucket \
run function cook:cooking/recipes/items5/baguette

execute at @s \
if items block ~ ~ ~ container.* echo_shard[custom_data={"magenta_wool":1}] \
if items block ~ ~ ~ container.* echo_shard[custom_data={"magenta_wool":2}] \
if items block ~ ~ ~ container.* echo_shard[custom_data={"magenta_wool":3}] \
if items block ~ ~ ~ container.* echo_shard[custom_data={"magenta_wool":4}] \
if items block ~ ~ ~ container.* echo_shard[custom_data={"magenta_wool":5}] \
run function cook:cooking/recipes/items5/magenta_wool

execute at @s \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:cabbage_item"] \
if items block ~ ~ ~ container.* carrot \
if items block ~ ~ ~ container.* potato \
if items block ~ ~ ~ container.* beetroot \
if items block ~ ~ ~ container.* pumpkin \
run function cook:cooking/recipes/items5/farm_vegetable_soup

execute at @s \
if items block ~ ~ ~ container.* rotten_flesh \
if items block ~ ~ ~ container.* bone \
if items block ~ ~ ~ container.* spider_eye \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:spices"] \
if items block ~ ~ ~ container.* poisonous_potato[item_model="minecraft:poisonous_potato"] \
run function cook:cooking/recipes/items5/voodoo_doll
