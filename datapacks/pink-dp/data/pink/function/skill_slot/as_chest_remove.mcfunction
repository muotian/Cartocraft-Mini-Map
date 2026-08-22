item replace entity @s container.1 from entity @n[type=item,tag=this] container.0
item replace entity @s container.0 from entity @p[tag=this_player] weapon.offhand
$data remove entity @s Items[0].components."minecraft:custom_data".pink_skill_$(id)_type
$data remove entity @s Items[0].components."minecraft:custom_data".pink_skill_$(id)_id
$data remove entity @s Items[0].components."minecraft:custom_data".pink_skill_t$(id)

$data modify storage pink:item_lore skill$(id)_name set from entity @p[tag=this_player] SelectedItem.components."minecraft:custom_data".lore.name
$data remove entity @s Items[0].components."minecraft:custom_data".slot_$(id)

data modify storage pink:item_lore skill1_name set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_1.name
data modify storage pink:item_lore skill1_u set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_1.u
data modify storage pink:item_lore skill2_name set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_2.name
data modify storage pink:item_lore skill2_cd set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_2.cd
data modify storage pink:item_lore skill3_name set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_3.name
data modify storage pink:item_lore skill3_v set from entity @p[tag=this_player] equipment.offhand.components."minecraft:custom_data".slot_3.v


execute if items entity @s container.0 *[custom_data~{slot_1:{}}] run function pink:skill_slot/lore1 with storage pink:item_lore {}
execute if items entity @s container.0 *[custom_data~{slot_2:{}}] run function pink:skill_slot/lore2 with storage pink:item_lore {}
execute if items entity @s container.0 *[custom_data~{slot_3:{}}] run function pink:skill_slot/lore3 with storage pink:item_lore {}

function pink:skill_slot/lore_change


# Texture
data modify storage pink:skill_store texture set value "s1"

data modify storage pink:skill_store texture set from entity @s Items[0].components."minecraft:custom_data".pink_skill_t1
data modify storage pink:skill_store texture set from entity @s Items[0].components."minecraft:custom_data".pink_skill_t2
data modify storage pink:skill_store texture set from entity @s Items[0].components."minecraft:custom_data".pink_skill_t3

function pink:skill_slot/texture with storage pink:skill_store {}

# Enchantment
execute unless items entity @s container.0 *[custom_data~{slot_1:{}}] unless items entity @s container.0 *[custom_data~{slot_2:{}}] unless items entity @s container.0 *[custom_data~{slot_3:{}}] run item modify entity @s container.0 pink:no_glow

execute if items entity @s container.1 *[custom_data~{enchantment:1b}] run function pink:skill_slot/remove_enchantment

item replace entity @p[tag=this_player] weapon.offhand from entity @n[tag=__,type=chest_minecart] container.0

kill @s
tag @p[tag=this_player] remove this_player
