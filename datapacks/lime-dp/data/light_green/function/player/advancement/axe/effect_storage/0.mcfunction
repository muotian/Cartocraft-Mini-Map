$execute store success score @s light_green.effect_storage.resistance run data modify storage light_green:weapon player.$(id).resistance_nbt set from entity @s active_effects[{id:"minecraft:resistance"}]
$execute store result storage light_green:weapon player.$(id).resistance.seconds int 1 run data get storage light_green:weapon player.$(id).resistance_nbt.duration 0.05
$execute store result score $effect_time light_green.main.math run data get storage light_green:weapon player.$(id).resistance.seconds
$execute if score $effect_time light_green.main.math matches ..-0 run data modify storage light_green:weapon player.$(id).resistance.seconds set value "infinite"

$execute store success score $effect_level light_green.main.math run data get storage light_green:weapon player.$(id).resistance_nbt.amplifier
$execute if score $effect_level light_green.main.math matches 0 run data modify storage light_green:weapon player.$(id).resistance.level set value 0
$execute if score $effect_level light_green.main.math matches 1 run data modify storage light_green:weapon player.$(id).resistance.level set from storage light_green:weapon player.$(id).resistance_nbt.amplifier
$execute store result score $effect.show_icon light_green.main.math run data get storage light_green:weapon player.$(id).resistance_nbt.show_icon
$execute if score $effect.show_icon light_green.main.math matches 1 run data modify storage light_green:weapon player.$(id).resistance.show_icon set value "false"
$execute if score $effect.show_icon light_green.main.math matches 0 run data modify storage light_green:weapon player.$(id).resistance.show_icon set value "true"

$execute store result score $effect_level light_green.main.math run data get storage light_green:weapon player.$(id).resistance.level
execute if score $effect_time light_green.main.math matches ..-0 if score $effect_level light_green.main.math matches 4.. run scoreboard players set @s light_green.effect_storage.resistance 0

$data remove storage light_green:weapon player.$(id).resistance_nbt