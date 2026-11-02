tag @s add wool_purple.attacker
$execute as @n[tag=wool_purple.attack_point] at @s run tp @s ~-$(dis_half) ~-$(dis_half) ~-$(dis_half)
$execute as @e[tag=wool_purple.damage.hit] run damage @s $(damage) apply_damage:$(type) by @n[tag=wool_purple.attacker]
$function#  ordered_splinter_weapon:effect/convert {slot:$(slot)}
execute as @e[tag=wool_purple.damage.hit] at @s if entity @s[tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
tag @e[tag=wool_purple.damage.hit] remove wool_purple.damage.hit
kill @n[tag=wool_purple.attack_point]
tag @s remove wool_purple.attacker