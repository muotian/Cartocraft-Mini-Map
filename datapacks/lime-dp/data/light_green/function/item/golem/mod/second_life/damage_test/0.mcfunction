execute positioned 0.0 0.0 0.0 run summon mannequin ~ ~ ~ {Health:1,Tags:["light_green.damage_test.mannequin"],attributes:[{id:"max_health",base:1024}],NoGravity:1b,Silent:1b}
tag @s add light_green.damage_test.target
execute as @e[tag=light_green.damage_test.mannequin,limit=1,type=mannequin] run function light_green:item/golem/mod/second_life/damage_test/1 with storage light_green:golem_item
tag @s remove light_green.damage_test.target