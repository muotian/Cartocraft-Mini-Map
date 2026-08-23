advancement revoke @s only black:use_fakecore
execute if score @s black.core_cd matches 1.. run return fail
execute if items entity @s weapon.offhand purple_dye[custom_data~{black_fake:1b}] run function black:item/core/change2
