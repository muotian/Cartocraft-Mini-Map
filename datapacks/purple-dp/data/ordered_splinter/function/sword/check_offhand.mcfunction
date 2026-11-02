execute if items entity @s weapon.mainhand *[custom_data~{no_offhand: 1b}] if items entity @s weapon.offhand *[custom_data~{aspectslayer_longsword: 1b}|custom_data~{purity_dagger: 1b}] run return run function ordered_splinter:sword/no_offhand_double
execute at @s if items entity @s weapon.offhand *[custom_data~{no_offhand: 1b}] run function ordered_splinter:sword/no_offhand
