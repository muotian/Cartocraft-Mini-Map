$execute unless entity @n[tag=light_green.bullet.$(id).target,distance=..50] run function light_green:mob/piglin_shaman/bullet/kill with storage light_green:mob
execute at @s run function light_green:item/golem/mod/adapt/bullet/hit
$execute if entity @s[tag=!light_green.bullet.buff,tag=!light_green.bullet.keep] if entity @n[tag=light_green.bullet.$(id).target,dx=0] run function light_green:item/golem/mod/adapt/bullet/kill with storage light_green:mob
$execute if entity @s[tag=light_green.bullet.buff] if entity @n[tag=light_green.bullet.$(id).target,dx=0] run function light_green:item/golem/mod/adapt/bullet/kill_buff with storage light_green:mob

function light_green:item/golem/mod/adapt/bullet/particle with storage light_green:mob

$execute unless score @s light_green.main.math matches 10.. as @s at @s anchored eyes facing entity @n[tag=light_green.bullet.$(id).target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.8 ~ ~

$execute if score @s light_green.main.math matches 10.. as @s at @s anchored eyes facing entity @n[tag=light_green.bullet.$(id).target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~