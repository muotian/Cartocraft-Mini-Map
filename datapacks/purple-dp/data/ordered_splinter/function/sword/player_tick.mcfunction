# 1. 髒檢查 (Dirty Check)：若當前持有武器被換走（丟棄、切槽、或從背包直接拖拽換掉），立即 unequip
execute if entity @s[tag=wool_purple.holding_windflame] unless items entity @s weapon.mainhand *[custom_data~{windflame_longsword: 1b}] run function ordered_splinter:sword/unequip/windflame
execute if entity @s[tag=wool_purple.holding_blade_of_finality] unless items entity @s weapon.mainhand *[custom_data~{blade_of_finality: 1b}] run function ordered_splinter:sword/unequip/blade_of_finality
execute if entity @s[tag=wool_purple.holding_singularity] unless items entity @s weapon.mainhand *[custom_data~{singularity_of_thousandfaces: 1b}] run function ordered_splinter:sword/unequip/singularity
execute if entity @s[tag=wool_purple.holding_aspectslayer] unless items entity @s weapon.mainhand *[custom_data~{aspectslayer_longsword: 1b}] run function ordered_splinter:sword/unequip/aspectslayer
execute if entity @s[tag=wool_purple.holding_purity_dagger] unless items entity @s weapon.mainhand *[custom_data~{purity_dagger: 1b}] run function ordered_splinter:sword/unequip/purity_dagger
execute if entity @s[tag=wool_purple.holding_eye_of_truesight] unless items entity @s weapon.mainhand *[custom_data~{eye_of_truesight: 1b}] run function ordered_splinter:sword/unequip/eye_of_truesight
execute if entity @s[tag=wool_purple.holding_isaiah] unless items entity @s weapon.mainhand *[custom_data~{isaiah: 1b}] run function ordered_splinter:sword/unequip/isaiah
execute if entity @s[tag=wool_purple.holding_pyrowind] unless items entity @s weapon.mainhand *[custom_data~{pyrowind_longsword: 1b}] run function ordered_splinter:sword/unequip/pyrowind
execute if entity @s[tag=wool_purple.holding_naraku] unless items entity @s weapon.mainhand *[custom_data~{naraku_fallen_shortsword: 1b}] run function ordered_splinter:sword/unequip/naraku
execute if entity @s[tag=wool_purple.holding_generic_weapon] unless items entity @s weapon.mainhand *[custom_data~{no_offhand: 1b}] run function ordered_splinter:sword/unequip/generic_no_offhand

# 2. 若玩家無自訂武器標籤（空手、拿常規物品，或剛卸下舊武器），執行裝備掃描
execute unless entity @s[tag=wool_purple.has_custom_weapon] run function ordered_splinter:sword/equip_scan

# 3. 武器常駐 Tick（純標籤路由，0 無效 NBT 檢查！）
execute if entity @s[tag=wool_purple.holding_windflame] run function ordered_splinter:sword/tick/windflame
execute if entity @s[tag=wool_purple.holding_blade_of_finality] at @s run function ordered_splinter:sword/blade_of_finality/user
execute if entity @s[tag=wool_purple.holding_singularity] run function ordered_splinter:sword/tick/singularity
execute if entity @s[tag=wool_purple.holding_aspectslayer] run function ordered_splinter:sword/tick/aspectslayer
execute if entity @s[tag=wool_purple.holding_purity_dagger] run function ordered_splinter:sword/tick/purity_dagger
execute if entity @s[tag=wool_purple.holding_eye_of_truesight] run function ordered_splinter:sword/tick/eye_of_truesight
execute if entity @s[tag=wool_purple.holding_isaiah] run function ordered_splinter:sword/tick/isaiah
execute if entity @s[tag=wool_purple.holding_pyrowind] run function ordered_splinter:sword/tick/pyrowind

# 4. 副手防禦與雙持檢測（僅在持有 no_offhand 且副手有物品時檢查）
execute if entity @s[tag=wool_purple.has_no_offhand] unless items entity @s weapon.offhand air run function ordered_splinter:sword/check_offhand
