scoreboard players operation @s wool_purple.carpet.sec = @s wool_purple.carpet_cd
scoreboard players operation @s wool_purple.carpet.sec /= $20 wool_purple.20

# 雙持切換檢測（僅在副手持純淨匕首時）
execute if items entity @s weapon.offhand *[custom_data~{purity_dagger: 1b}] if score @s wool_purple.switch.sword matches 1 run tag @s add wool_purple.use_purity_dagger
execute if entity @s[tag=wool_purple.use_purity_dagger] run function ordered_splinter:sword/purity_dagger/comet_start
execute if entity @s[tag=wool_purple.use_purity_dagger] run function ordered_splinter_hand_take:delete with storage player:data
scoreboard players operation @s[tag=wool_purple.use_purity_dagger] wool_purple.switch.sword *= -1 wool_purple.switch.sword
tag @s[tag=wool_purple.use_purity_dagger] remove wool_purple.use_purity_dagger
