
tag @s add white.atker
function white:sys/player/on_hit/victim/use

execute if items entity @s weapon.offhand *[custom_data~{white:{item:"rosin"}}] run function white:move/rosin/on_hit
execute if items entity @s armor.chest *[custom_data~{white:{item:liuhsu,liuhsu_id:liu}}] run function white:move/liuhsu/on_hit
execute if items entity @s weapon.mainhand *[custom_data~{white:{item:"reverse_guitar"}}] run playsound white:reverse_guitar master @a ~ ~ ~ 0.5 1

execute unless score #is_custom white.main matches 1 run tag @e[type=#white:hostile,tag=white.victim,distance=..8,limit=1] remove white.victim
tag @s remove white.atker
advancement revoke @s only white:flags/on_hit