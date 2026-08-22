execute if score @s wool_purple.weapon.double matches 1 run return run function ordered_splinter_weapon:sword/double/control
execute unless items entity @s weapon.offhand *[custom_data~{weapon:{type:sword}}] run return fail
$execute as @n[tag=$(id)-hand] run function ordered_splinter_weapon:convert/delete
function ordered_splinter_weapon:sword/double/summon with storage player:data