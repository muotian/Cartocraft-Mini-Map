
execute if items entity @a[tag=white.target,limit=1] container.* *[custom_data~{white:{item:'sovereign_blade'}}] run return 1
execute if items entity @a[tag=white.target,limit=1] weapon.offhand *[custom_data~{white:{item:'sovereign_blade'}}] run return 1
execute if items entity @a[tag=white.target,limit=1] player.crafting.* *[custom_data~{white:{item:'sovereign_blade'}}] run return 1
execute if items entity @a[tag=white.target,limit=1] player.cursor *[custom_data~{white:{item:'sovereign_blade'}}] run return 1
return fail