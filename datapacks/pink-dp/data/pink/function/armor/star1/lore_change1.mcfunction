#
$summon chest_minecart ~ ~-1000 ~ {Tags:["__","$(1)"]}

$item replace entity @n[tag=__,tag=$(1)] container.0 from entity @s armor.$(slot)

#
$execute if score @s pink.armor.star.count matches 1 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(1)] set value ["",{"text":">>","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore1","italic":false,"color":"white"},{"text":"  (1/3)","italic":false,"color":"gray"}]
$execute if score @s pink.armor.star.count matches 2 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(1)] set value ["",{"text":">>","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore1","italic":false,"color":"white"},{"text":"  (2/3)","italic":false,"color":"gray"}]
$execute if score @s pink.armor.star.count matches 2 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(2)] set value ["",{"text":" >","italic":false,"color":"dark_gray"},{"text":"| ","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore2","italic":false,"color":"dark_gray"}]
$execute if score @s pink.armor.star.count matches 2 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(3)] set value ["",{"text":" >","italic":false,"color":"dark_gray"},{"text":"| ","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore6","italic":false,"color":"dark_gray"}]
$execute if score @s pink.armor.star.count matches 2 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(4)] set value ["",{"text":" >","italic":false,"color":"dark_gray"},{"text":"|","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore3","italic":false,"color":"dark_gray"},{translate:"item.pink.star_attack.lore4","italic":false,"color":"dark_gray"},{translate:"item.pink.armor.star1.lore4","italic":false,"color":"dark_gray"}]
$execute if score @s pink.armor.star.count matches 3 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(1)] set value ["",{"text":">","italic":false,"color":"aqua",bold:true},{"text":">","italic":false,"color":"dark_aqua"},{translate:"item.pink.armor.star1.lore1","italic":false,"color":"white"},{"text":"  (3/3)","italic":false,"color":"aqua"}]
$execute if score @s pink.armor.star.count matches 3 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(2)] set value ["",{"text":" >","italic":false,"color":"aqua"},{"text":"| ","italic":false,"color":"gray"},{translate:"item.pink.armor.star1.lore2","italic":false,"color":"white"}]
$execute if score @s pink.armor.star.count matches 3 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(3)] set value ["",{"text":" >","italic":false,"color":"aqua"},{"text":"| ","italic":false,"color":"gray"},{translate:"item.pink.armor.star1.lore6","italic":false,"color":"white"}]
$execute if score @s pink.armor.star.count matches 3 run data modify entity @n[tag=__,tag=$(1)] Items[0].components."minecraft:lore"[$(4)] set value ["",{"text":" >","italic":false,"color":"aqua"},{"text":"|","italic":false,"color":"gray"},{translate:"item.pink.armor.star1.lore3","italic":false,"color":"white"},{translate:"item.pink.star_attack.lore4","italic":false,"color":"light_purple"},{translate:"item.pink.armor.star1.lore4","italic":false,"color":"white"}]

$item replace entity @s armor.$(slot) from entity @n[tag=__,tag=$(1)] container.0


#
$kill @n[tag=__,tag=$(1)]