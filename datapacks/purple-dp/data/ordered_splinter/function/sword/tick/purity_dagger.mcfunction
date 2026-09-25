scoreboard players operation @s wool_purple.comet.sec = @s wool_purple.comet_cd
scoreboard players operation @s wool_purple.comet.sec /= $20 wool_purple.20

# 雙持切換檢測（僅在副手持絕相長劍時）
execute if items entity @s weapon.offhand *[custom_data~{aspectslayer_longsword: 1b}] if score @s wool_purple.switch.sword matches -1 run tag @s add wool_purple.use_aspectslayer_longsword
execute if entity @s[tag=wool_purple.use_aspectslayer_longsword] run function ordered_splinter:sword/aspectslayer_longsword/carpet_start
execute if entity @s[tag=wool_purple.use_aspectslayer_longsword] run function ordered_splinter_hand_take:delete with storage player:data
scoreboard players operation @s[tag=wool_purple.use_aspectslayer_longsword] wool_purple.switch.sword *= -1 wool_purple.switch.sword
tag @s[tag=wool_purple.use_aspectslayer_longsword] remove wool_purple.use_aspectslayer_longsword
