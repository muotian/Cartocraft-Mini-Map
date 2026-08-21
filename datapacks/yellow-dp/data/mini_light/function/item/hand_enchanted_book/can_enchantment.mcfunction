scoreboard players reset can_enchant mini_light.main
scoreboard players reset $is_soul_gem mini_light.main

# is enchant
summon armor_stand ~ ~ ~ {UUID:[I;165,0,65536,1]}

item replace entity a5-0-0-1-1 weapon.mainhand from entity @s weapon.offhand
item replace entity a5-0-0-1-1 weapon.offhand from entity @s weapon.offhand
# 覆寫
execute if items entity a5-0-0-1-1 weapon.mainhand bundle[enchantments~[{enchantments: "mini_light:soul_gem"}]] run item replace entity a5-0-0-1-1 weapon.mainhand with iron_chestplate
execute if items entity a5-0-0-1-1 weapon.mainhand armadillo_scute[custom_data~{weapon:1b}] run item replace entity a5-0-0-1-1 weapon.mainhand with iron_sword

data remove entity a5-0-0-1-1 equipment.mainhand.components.minecraft:enchantments
data remove entity a5-0-0-1-1 equipment.offhand.components.minecraft:enchantments
$execute store success score can_enchant mini_light.main run enchant a5-0-0-1-1 $(id) $(lvl)
$item modify entity a5-0-0-1-1 weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"$(id)":$(lvl)},add:0b}
execute store success score $is_soul_gem mini_light.main if items entity a5-0-0-1-1 weapon.offhand *[enchantments~[{enchantments:"mini_light:soul_gem"}]]

kill a5-0-0-1-1