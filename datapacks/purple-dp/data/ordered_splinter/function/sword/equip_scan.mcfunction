# 快速過濾：若主手不是自訂物品（無 custom_data），立即退出
execute unless items entity @s weapon.mainhand *[custom_data~{}] run return fail

# 精準單次比對主手武器，匹配成功立即 return 終止後續判斷
execute if items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] run return run function ordered_splinter:sword/equip/pyrowind
execute if items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run return run function ordered_splinter:sword/equip/windflame
execute if items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run return run function ordered_splinter:sword/equip/blade_of_finality
execute if items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] run return run function ordered_splinter:sword/equip/singularity
execute if items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] run return run function ordered_splinter:sword/equip/aspectslayer
execute if items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] run return run function ordered_splinter:sword/equip/purity_dagger
execute if items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run return run function ordered_splinter:sword/equip/isaiah
execute if items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run return run function ordered_splinter:sword/equip/naraku
execute if items entity @s weapon.mainhand *[custom_data~{eye_of_truesight: 1b}] run return run function ordered_splinter:sword/equip/eye_of_truesight
execute if items entity @s weapon.mainhand *[custom_data~{no_offhand: 1b}] run return run function ordered_splinter:sword/equip/generic_no_offhand
