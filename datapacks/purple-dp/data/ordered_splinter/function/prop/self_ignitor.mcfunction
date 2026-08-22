advancement revoke @s only ordered_splinter:self_ignitor_right_click

tag @s add wool_purple.self_ignitor
scoreboard players set @s wool_purple.self_ignitor 1

scoreboard players add @s wool_purple.self_ignitor.stockpile 1

execute unless score @s wool_purple.self_ignitor.stockpile matches 20 run return fail

tag @s add wool_purple.fire_target
function ordered_splinter:boss/archdemon/animation/fire_summon {fire_level:10}
playsound item.flintandsteel.use player @s ~ ~ ~ 2 1.2

execute if items entity @s weapon.mainhand *[custom_data~{self_ignitor: 1b}] run function ordered_splinter:prop/hand_replace {hand:mainhand}
execute if items entity @s weapon.offhand *[custom_data~{self_ignitor: 1b}] run function ordered_splinter:prop/hand_replace {hand:offhand}

scoreboard players reset @s wool_purple.self_ignitor.stockpile