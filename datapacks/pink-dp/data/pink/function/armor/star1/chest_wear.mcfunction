# tag
tag @s add pink.armor.star1

# 脫褲子
clear @s *[custom_data~{pink_armor:"leg"}]
execute if items entity @s armor.legs * unless items entity @s armor.legs *[custom_data~{pink_armor:"leg"}] run function pink:armor/star1/legs_off
item replace entity @s armor.legs with leather_leggings[enchantments={binding_curse:1},attribute_modifiers=[{type:armor,amount:0,operation:add_value,id:"1769571618429"}],unbreakable={},tooltip_display={hide_tooltip:true},minecraft:item_model="pink:armor/_",enchantment_glint_override=false,minecraft:equippable={slot:"legs",asset_id:"pink:star"},custom_data={pink_armor:"leg"}]

# 套裝
scoreboard players add @s pink.armor.star.count 1

execute if entity @s[tag=pink.armor.star1] run function pink:armor/star1/lore_change1 {1:3,2:4,3:5,4:6,slot:"chest"}
execute if entity @s[tag=pink.armor.star3] run function pink:armor/star1/lore_change1 {1:1,2:2,3:3,4:4,slot:"feet"}
execute if entity @s[tag=pink.armor.star2] run function pink:armor/star1/lore_change1 {1:5,2:6,3:7,4:8,slot:"head"}

tag @s[scores={pink.armor.star.count=..3}] remove pink.armor.star_set
tag @s[scores={pink.armor.star.count=3}] add pink.armor.star_set