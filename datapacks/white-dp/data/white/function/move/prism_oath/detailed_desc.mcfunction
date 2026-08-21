
data modify entity @e[predicate=white:sys/is_prism_oath,distance=..1,type=item,limit=1] PickupDelay set value 0s

# fx
tellraw @s ["ღ ———— ",{"translate": "item.white.prism_oath.1","color":"#B5FFF5","bold":true},{"translate": "item.white.prism_oath.2","color":"#ADE9F7","bold":true},{"translate": "item.white.prism_oath.3","color":"#A5D3F9","bold":true},{"translate": "item.white.prism_oath.4","color":"#9DBDFC","bold":true}," ———— ღ"]
tellraw @s ""
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.1","color":"gray","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.2","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.3","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.4","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.5","color":"gray","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s ""
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.6","color":"gray","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.7","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.8","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.9","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s ""
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.10","color":"gray","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.11","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.12","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.13","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]
tellraw @s [{"translate": "text.white.prism_oath.detailed_desc.14","color":"white","with":[{"translate": "item.white.prism_oath.oath","color":"#a6d6f5"}]}]

playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 1.5