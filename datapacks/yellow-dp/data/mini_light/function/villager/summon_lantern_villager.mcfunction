summon villager ~ ~ ~ {Tags:["mini_light.lantern_villager", new], attributes:[{id:"movement_speed",base: 0.0d}], Offers:{Recipes:[]}, Invulnerable:1b, CustomName:{translate:"entity.mini_light.lantern_villager"}, VillagerData:{type:"snow", level:6, profession:"weaponsmith"}}

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with torch 1
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand with gold_ingot 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapon_frame/golden_lantern_frame
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with torch 1
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand with copper_ingot 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapon_frame/copper_lantern_frame
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with coal 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/coal_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with coal 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/coal_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with emerald 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/emerald_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with emerald 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/emerald_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with blaze_powder 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/blaze_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with blaze_powder 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/blaze_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with redstone 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/redstone_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with redstone 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/redstone_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with amethyst_shard 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/amethyst_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with amethyst_shard 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/amethyst_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with gunpowder 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/gunpowder_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with gunpowder 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/gunpowder_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with soul_sand 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/golden_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/soul_lantern_golden
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.lantern_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with soul_sand 1
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_lantern_frame
loot replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head loot mini_light:weapons/lantern/soul_lantern_copper
execute as @n[tag=mini_light.lantern_villager, tag=new] run function mini_light:villager/replace_recipes

item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.mainhand with air 1
item replace entity @n[tag=mini_light.lantern_villager, tag=new] weapon.offhand with air 1
item replace entity @n[tag=mini_light.lantern_villager, tag=new] armor.head with air 1
