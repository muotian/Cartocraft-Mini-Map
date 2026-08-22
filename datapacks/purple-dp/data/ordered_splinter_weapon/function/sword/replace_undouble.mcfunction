execute if items entity @s weapon.offhand *[custom_data~{weapon:{type:sword}}] run return fail
$execute as @n[tag=$(id)-hand] run function ordered_splinter_weapon:convert/delete
function ordered_splinter_weapon:sword/summon with storage player:data