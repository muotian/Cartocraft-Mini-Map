execute if entity @s[type=#mobs] run return run function ordered_splinter:boss/archdemon/animation/ice_mob_damage

tag @s add wool_purple.ice_target
function ordered_splinter:boss/archdemon/animation/ice_less
scoreboard players add @s wool_purple.ice_remove 5
execute unless score $archdemon_ice_to_sprint wool_purple.boss_animation matches 1.. run scoreboard players set $archdemon_ice_to_sprint wool_purple.boss_animation 60