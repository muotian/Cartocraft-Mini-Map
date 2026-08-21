summon villager ~ ~ ~ {Tags:["mini_light.candle_villager", new], attributes:[{id:"movement_speed",base: 0.0d}], Offers:{Recipes:[]}, Invulnerable:1b, CustomName:{translate:"entity.mini_light.candle_villager"}, VillagerData:{type:"desert", level:6, profession:"weaponsmith"}}

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with candle 1
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand with bone 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapon_frame/candlestick_frame
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with candle 1
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand with copper_ingot 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapon_frame/copper_candle_frame
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with coal 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/coal_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with coal 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/coal_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with emerald 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/emerald_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with emerald 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/emerald_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with blaze_powder 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/blaze_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with blaze_powder 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/blaze_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with redstone 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/redstone_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with redstone 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/redstone_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with amethyst_shard 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/amethyst_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with amethyst_shard 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/amethyst_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with gunpowder 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/gunpowder_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with gunpowder 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/gunpowder_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with soul_sand 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/candlestick_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/soul_candlestick
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

data modify entity @n[tag=mini_light.candle_villager, tag=new] Offers.Recipes append value {buy:{id:"stone", count:1}, buyB:{id:"stone", count:1}, sell:{id:"stone", count:1}, maxUses:999999}
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with soul_sand 1
loot replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand loot mini_light:weapon_frame/copper_candle_frame
loot replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head loot mini_light:weapons/candle/soul_candle_copper
execute as @n[tag=mini_light.candle_villager, tag=new] run function mini_light:villager/replace_recipes

item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.mainhand with air 1
item replace entity @n[tag=mini_light.candle_villager, tag=new] weapon.offhand with air 1
item replace entity @n[tag=mini_light.candle_villager, tag=new] armor.head with air 1
