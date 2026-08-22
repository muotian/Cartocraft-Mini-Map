scoreboard players set $weapon wool_purple.give.damage 40
data modify storage give:weapon damage_type set value "weapon"
function ordered_splinter_give:damage/0 with storage give:weapon
scoreboard players set $weapon_effect_damage wool_purple.give.damage 5
data modify storage give:weapon damage_type set value "weapon_effect_damage"
function ordered_splinter_give:damage/0 with storage give:weapon
data modify storage give:weapon time set value 0
function ordered_splinter_give:sword/rotten/give with storage give:weapon