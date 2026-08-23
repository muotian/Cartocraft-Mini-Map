advancement revoke @s only black:use_realcore
execute if score @s black.core_cd matches 1.. run return fail
execute if items entity @s weapon.offhand yellow_dye[custom_data~{black_real:1b}] run function black:item/core/change