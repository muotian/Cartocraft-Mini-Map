execute unless items entity @s container.* *[custom_data~{light_green.golden_spear:1}] run return fail
data modify storage light_green:weapon slot set from entity @s Inventory[{components:{"minecraft:custom_data":{"light_green.golden_spear":1}}}].Slot
function light_green:item/piglin_girl/spear/deupgrade with storage light_green:weapon