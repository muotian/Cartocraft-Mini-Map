
tag @s add white.victim
execute on attacker run function white:sys/player/on_hurt/find_atker

execute if items entity @s armor.chest *[custom_data~{white:{item:liuhsu,liuhsu_id:hsu}}] run function white:move/liuhsu/on_hurt

tag @s remove white.victim
execute on attacker run tag @s remove white.atker
advancement revoke @s only white:flags/on_hurt