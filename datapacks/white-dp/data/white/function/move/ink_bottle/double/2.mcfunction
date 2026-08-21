
scoreboard players reset @s white.move.ink_bottle.count

execute if items entity @s weapon.mainhand *[custom_data~{white:{item:ink_bottle}}] run return run item modify entity @s weapon.mainhand {function:"set_name",entity:"this",name:[{"translate": "item.white.ink_bottle"}],target:"item_name"}
item modify entity @s weapon.offhand {function:"set_name",entity:"this",name:[{"translate": "item.white.ink_bottle"}],target:"item_name"}

return 1