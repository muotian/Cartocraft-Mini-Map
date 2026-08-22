# Lore 這裡好難寫我快要瘋了!!!!!!!!!!!!!!!!!!!!!!
data modify storage pink:item_lore lore set value []

data modify storage pink:item_lore lore prepend from storage pink:item_lore skill3
data modify storage pink:item_lore lore prepend from storage pink:item_lore skill2
data modify storage pink:item_lore lore prepend from storage pink:item_lore skill1


data modify storage pink:item_lore lore append value ""
data modify storage pink:item_lore lore append value {translate:"item.pink.f_shift","italic":false,color:"green"}

data modify storage pink:item_lore lore prepend value [{"text":">","color":"#994AE0","italic":false,"bold":true},{"text":"> ","color":"#7130AD","italic":false,"bold":false},{"text":"技能 :","color":"white","bold":false}]
data modify storage pink:item_lore lore prepend value ""


data modify entity @s Items[0].components."minecraft:lore" set from storage pink:item_lore lore

execute unless data storage pink:item_lore skill1 unless data storage pink:item_lore skill2 unless data storage pink:item_lore skill3 run data modify entity @s Items[0].components."minecraft:lore" set value ["",{translate:"item.pink.f_shift","italic":false,color:"green"}]

data remove storage pink:item_lore skill1
data remove storage pink:item_lore skill2
data remove storage pink:item_lore skill3

data remove storage pink:item_lore lore

