
advancement revoke @s only mini_light:item/hand_enchanted_book/use
data remove storage mini_light:temp enchantment
scoreboard players set @s mini_light.hand_enchanted_book.cd 4

# 副手是空的
execute unless items entity @s weapon.offhand * run return run function mini_light:item/hand_enchanted_book/fail/no_item

# 附魔書在副手
execute if items entity @s weapon.offhand *[custom_data~{mini_light:"hand_enchanted_book"}] run return run function mini_light:item/hand_enchanted_book/fail/offhand

# 獲取 Data
data modify storage mini_light:temp enchantment set from entity @s SelectedItem.components."minecraft:custom_data".hand_enchanted_book
execute store result score book_lvl mini_light.main run data get entity @s SelectedItem.components."minecraft:custom_data".hand_enchanted_book.lvl
function mini_light:item/hand_enchanted_book/get_item_lvl with storage mini_light:temp enchantment

    # 是否能附魔
function mini_light:item/hand_enchanted_book/can_enchantment with storage mini_light:temp enchantment
execute if score can_enchant mini_light.main matches 0 run return run function mini_light:item/hand_enchanted_book/fail/no_apply

    # 附魔等級 
execute if score book_lvl mini_light.main <= item_lvl mini_light.main run return run function mini_light:item/hand_enchanted_book/fail/lower_lvl

    # 附魔！
function mini_light:item/hand_enchanted_book/enchant with storage mini_light:temp enchantment

particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.2 0.2 0.2 0 10 force
playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.5 2

# 打個補丁
function mini_light:item/hand_enchanted_book/patch