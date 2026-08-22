scoreboard players set $weapon wool_purple.give.damage 40
data modify storage give:weapon damage_type set value "weapon"
function ordered_splinter_give:damage/0 with storage give:weapon
scoreboard players set $weapon_effect_time effect.time 2
scoreboard players set $weapon_effect_damage wool_purple.give.damage 15
data modify storage give:weapon damage_type set value "weapon_effect_damage"
function ordered_splinter_give:damage/0 with storage give:weapon
$execute store result storage give:weapon time int 0.1 run scoreboard players operation $weapon_effect_time effect.time *= $1$(quality) wool_purple.main.math
function ordered_splinter_give:gloves/rotten/give with storage give:weapon