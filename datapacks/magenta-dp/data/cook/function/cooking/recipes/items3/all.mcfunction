#

execute at @s \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:cabbage_item"] \
if items block ~ ~ ~ container.* carrot \
if items block ~ ~ ~ container.* beetroot \
run function cook:cooking/recipes/items3/salad

execute at @s \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:milk_bottle"] \
if items block ~ ~ ~ container.* honey_bottle \
run function cook:cooking/recipes/items3/oatmeal

execute at @s \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* milk_bucket \
if items block ~ ~ ~ container.* honey_bottle \
run function cook:cooking/recipes/items3/oatmeal

execute at @s \
if items block ~ ~ ~ container.* sugar \
if items block ~ ~ ~ container.* honey_bottle \
if items block ~ ~ ~ container.* apple \
run function cook:cooking/recipes/items3/candy_apple

execute at @s \
if items block ~ ~ ~ container.* #cook:raw_meats \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* potato \
run function cook:cooking/recipes/items3/meat_pie

execute at @s \
if items block ~ ~ ~ container.* red_mushroom \
if items block ~ ~ ~ container.* crimson_fungus \
if items block ~ ~ ~ container.* spider_eye \
run function cook:cooking/recipes/items3/mysterious_stew

execute at @s \
if items block ~ ~ ~ container.* #cook:raw_meats \
if items block ~ ~ ~ container.* #cook:mushrooms \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:cabbage_item"] \
run function cook:cooking/recipes/items3/grilled_meat_skewer

execute at @s \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:milk_bottle"] \
if items block ~ ~ ~ container.* egg \
if items block ~ ~ ~ container.* sugar \
run function cook:cooking/recipes/items3/pudding

execute at @s \
if items block ~ ~ ~ container.* milk_bucket \
if items block ~ ~ ~ container.* egg \
if items block ~ ~ ~ container.* sugar \
run function cook:cooking/recipes/items3/pudding

execute at @s \
if items block ~ ~ ~ container.* clock[custom_data~{icer.mithril:1b}] \
if items block ~ ~ ~ container.* #cook:raw_meats \
if items block ~ ~ ~ container.* #cook:mushrooms \
run function cook:cooking/recipes/items3/mithril_stew

execute at @s \
if items block ~ ~ ~ container.* clock[custom_data~{icer.mithril:1b}] \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* #cook:raw_meats \
run function cook:cooking/recipes/items3/mithril_pizza
