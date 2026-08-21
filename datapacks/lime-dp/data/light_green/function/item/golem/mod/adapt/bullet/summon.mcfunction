execute unless entity @n[tag=light_green.shaman_bullet] run scoreboard players reset $bullet_id light_green.main.math
$execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~-0.5 ~ {Tags:["light_green","light_green.mob","light_green.shaman_bullet","light_green.new.mob","light_green.from_player","light_green.bullet.$(tag)"]}
execute store result storage light_green:mob id int 1 run scoreboard players add $bullet_id light_green.main.math 1
function light_green:random {math1:-50,math2:50}
data modify storage light_green:mob rotate1 set from storage light_green:random random
function light_green:random {math1:-90,math2:0}
data modify storage light_green:mob rotate2 set from storage light_green:random random
function light_green:item/golem/mod/adapt/bullet/tag with storage light_green:mob
tag @n[tag=light_green.new.mob] remove light_green.new.mob