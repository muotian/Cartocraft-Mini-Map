# 這個函數會給你一把範例武器，武器的效果是
# 拿著武器會有粒子效果+藥水效果
# 請搭配資源包才能看到中文的物品名稱與敘述

give @s iron_sword[item_model="light_gray_wool:spell_example", item_name={translate:"item.light_gray_wool.spell_power"}, lore=[{translate:"item.light_gray_wool.spell_power.lore.1"}, {translate:"item.light_gray_wool.spell_power.lore.2"}, {translate:"item.light_gray_wool.spell_power.lore.3"}, {translate:"item.light_gray_wool.spell_power.lore.4"}, {translate:"item.light_gray_wool.spell_power.lore.5"}, {translate:"item.light_gray_wool.spell_power.lore.6"}], custom_data={spell_power:1b}]