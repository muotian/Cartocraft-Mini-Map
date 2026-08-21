#

execute at @s \
if items block ~ ~ ~ container.* rotten_flesh \
if items block ~ ~ ~ container.* bone \
run function cook:cooking/recipes/items2/rotten_broth

execute at @s \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* sugar \
run function cook:cooking/recipes/items2/bread_roll

#
execute at @s \
if items block ~ ~ ~ container.* pumpkin \
if items block ~ ~ ~ container.* poisonous_potato[item_model="magenta:milk_bottle"] \
run function cook:cooking/recipes/items2/pumpkin_soup

execute at @s \
if items block ~ ~ ~ container.* pumpkin \
if items block ~ ~ ~ container.* milk_bucket \
run function cook:cooking/recipes/items2/pumpkin_soup

#
execute at @s \
if items block ~ ~ ~ container.* pufferfish \
if items block ~ ~ ~ container.* kelp \
run function cook:cooking/recipes/items2/roasted_pufferfish

execute at @s \
if items block ~ ~ ~ container.* #cook:raw_meats \
if items block ~ ~ ~ container.* blaze_powder \
run function cook:cooking/recipes/items2/spicy_stew

execute at @s \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* #cook:mushrooms \
run function cook:cooking/recipes/items2/mushroom_risotto

execute at @s \
if items block ~ ~ ~ container.* wheat \
if items block ~ ~ ~ container.* #cook:berries \
run function cook:cooking/recipes/items2/berry_bread

execute at @s \
if items block ~ ~ ~ container.* #cook:berries \
if items block ~ ~ ~ container.* honey_bottle \
run function cook:cooking/recipes/items2/berry_honey_brew

execute at @s \
if items block ~ ~ ~ container.* ice \
if items block ~ ~ ~ container.* cookie[custom_data~{philosopher_stone: 1b}] \
run function cook:cooking/recipes/items2/gem_shaved_ice

execute at @s \
if items block ~ ~ ~ container.* apple \
if items block ~ ~ ~ container.* apple[custom_data~{demon_remains: 1b}] \
run function cook:cooking/recipes/items2/amber_demon_meat

execute at @s \
if items block ~ ~ ~ container.* clock[custom_data~{icer.mithril:1b}] \
if items block ~ ~ ~ container.* ice \
run function cook:cooking/recipes/items2/mithril_ice
