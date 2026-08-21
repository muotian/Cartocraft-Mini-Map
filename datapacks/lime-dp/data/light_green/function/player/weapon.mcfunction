execute if entity @s[tag=light_green.clear_fall] run function light_green:item/piglin_girl/axe/clear_fall

execute if entity @s[tag=light_green.crack_apply] run function light_green:item/piglin_girl/axe/unground
execute if entity @s[tag=light_green.crack_cancel] run function light_green:item/piglin_girl/axe/unground

execute if entity @s[tag=light_green.take_dagger] unless items entity @s weapon.mainhand golden_sword[custom_data~{light_green.golden_dagger:1}] run function light_green:item/piglin_girl/dagger/return_power

function light_green:item/big_hoglin/sword/max_health/clear
execute if entity @s[tag=light_green.take_shield] run function light_green:item/big_hoglin/sword/right/clear
execute if score @s light_green.hoglin.shield.upgrade.keep matches 1.. run function light_green:item/big_hoglin/sword/upgrade/0
execute if score @s light_green.hoglin.shield.roar matches 1.. run function light_green:item/big_hoglin/sword/roar/0
execute if score @s light_green.hoglin.shield.holding matches 1.. run function light_green:item/big_hoglin/sword/shielding

execute if entity @s[tag=light_green.spear.deupgrade2] run function light_green:item/piglin_girl/spear/deupgrade_tick
execute if entity @s[tag=light_green.spear.deupgrade] unless items entity @s weapon.mainhand golden_spear[custom_data~{light_green.golden_spear:1}] run function light_green:item/piglin_girl/spear/deupgrade_tick

execute if score @s light_green.spear_sprint matches 1.. run function light_green:item/piglin_girl/spear/using with storage light_green:player
execute if score @s light_green.dagger_sprint matches 1.. run function light_green:item/piglin_girl/dagger/using with storage light_green:player

execute if items entity @s hotbar.* *[custom_data~{light_green.hoglin_sword:1b}] run function light_green:item/big_hoglin/sword/tick

execute if items entity @s weapon.mainhand golden_axe[custom_data~{light_green.golden_axe:1}] run function light_green:item/piglin_girl/axe/tick with storage light_green:player
execute if items entity @s weapon.mainhand golden_spear[custom_data~{light_green.golden_spear:1}] run function light_green:item/piglin_girl/spear/tick with storage light_green:player
execute if items entity @s weapon.mainhand golden_sword[custom_data~{light_green.golden_dagger:1}] run function light_green:item/piglin_girl/dagger/tick with storage light_green:player

execute if items entity @s container.* *[custom_data~{"light_green:golem_hand_cannon":1}] unless items entity @s weapon.mainhand *[custom_data~{"light_green:golem_hand_cannon":1}] unless items entity @s weapon.offhand *[custom_data~{"light_green:golem_hand_cannon":1}] run function light_green:item/golem/hand_cannon/inventory/0 with storage light_green:player
execute if items entity @s weapon.mainhand *[custom_data~{"light_green:golem_hand_cannon":1}] run function light_green:item/golem/hand_cannon/take/main with storage light_green:player
execute if items entity @s weapon.offhand *[custom_data~{"light_green:golem_hand_cannon":1}] run function light_green:item/golem/hand_cannon/take/off with storage light_green:player

execute if items entity @s container.* *[custom_data~{light_green.enchant:1b}] run function light_green:enchantment_add/clear_enchant_tag/inventory/0
execute if items entity @s weapon.offhand *[custom_data~{light_green.enchant:1b}] run function light_green:enchantment_add/clear_enchant_tag/offhand
execute if items entity @s player.cursor *[custom_data~{light_green.enchant:1b}] run function light_green:enchantment_add/clear_enchant_tag/cursor

execute if items entity @s container.* *[custom_data~{light_green.teeth:1}] run function light_green:arena/quit/hoglin/0

execute if score @s light_green.axe_cooldown matches 1.. run scoreboard players remove @s light_green.axe_cooldown 1