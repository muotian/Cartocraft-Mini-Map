execute if score @s wool_purple.weapon.double matches 1 run return run function ordered_splinter_weapon:sword/double/l_click with storage player:data
execute if score @s wool_purple.weapon.attack_type matches 1 run scoreboard players set @s wool_purple.weapon.attack_cold 9
execute if score @s wool_purple.weapon.attack_type matches 1 run scoreboard players set @s wool_purple.weapon.player_hand_animation 21
$execute if score @s wool_purple.weapon.attack_type matches 1 as @n[tag=$(id)-hand] run return run function animated_java:sword_model/animations/attack_test/play
execute if score @s wool_purple.weapon.attack_type matches 2 run scoreboard players set @s wool_purple.weapon.attack_cold 11
execute if score @s wool_purple.weapon.attack_type matches 2 run scoreboard players set @s wool_purple.weapon.player_hand_animation 23
$execute if score @s wool_purple.weapon.attack_type matches 2 as @n[tag=$(id)-hand] run return run function animated_java:sword_model/animations/attack_test2/play
execute if score @s wool_purple.weapon.attack_type matches 3 run scoreboard players set @s wool_purple.weapon.attack_cold 12
execute if score @s wool_purple.weapon.attack_type matches 3 run scoreboard players set @s wool_purple.weapon.player_hand_animation 22
$execute if score @s wool_purple.weapon.attack_type matches 3 as @n[tag=$(id)-hand] run return run function animated_java:sword_model/animations/attack_test3/play
execute if score @s wool_purple.weapon.attack_type matches 4 run scoreboard players set @s wool_purple.weapon.attack_cold 12
execute if score @s wool_purple.weapon.attack_type matches 4 run scoreboard players set @s wool_purple.weapon.player_hand_animation 21
$execute if score @s wool_purple.weapon.attack_type matches 4 as @n[tag=$(id)-hand] run return run function animated_java:sword_model/animations/attack_test4/play