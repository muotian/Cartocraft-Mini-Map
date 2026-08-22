# 這個函數會給你一把範例武器，武器的效果是
# 拿著武器會有粒子效果+藥水效果
# 請搭配資源包才能看到中文的物品名稱與敘述

playsound minecraft:entity.player.attack.sweep voice @s

give @s iron_sword[item_model="light_gray_wool:temp_sword", custom_data={spell_temp_sword:1b}, lore=[[{"color": "gray", "italic": false, translate: "item.light_gray_wool.spell_temp_sword.lore.1"}, {"color": "dark_gray", "italic": false, "text": "｜"}, {"color": "#4F8F7A", "italic": false, translate: "item.light_gray_wool.spell_temp_sword.lore.2"}], [{"italic": false, "text": ""}], [{"color": "gray", "italic": false, translate: "item.light_gray_wool.spell_temp_sword.lore.3"}],[{"color": "gray", "italic": false, translate: "item.light_gray_wool.spell_temp_sword.lore.4"}]],minecraft:custom_name=[{translate:"item.light_gray_wool.spell_temp_sword","color":"#FB8C00","italic":false}]]