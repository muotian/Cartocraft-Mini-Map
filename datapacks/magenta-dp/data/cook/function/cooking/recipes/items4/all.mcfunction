#

execute at @s \
if items block ~ ~ ~ container.* rotten_flesh \
if items block ~ ~ ~ container.* bone \
if items block ~ ~ ~ container.* spider_eye \
if items block ~ ~ ~ container.* brown_mushroom \
run function cook:cooking/recipes/items4/witch_broth
