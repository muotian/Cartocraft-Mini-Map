scoreboard players reset $piglin_girl.summon light_green.main.math
scoreboard players reset $piglin_girl.hurt light_green.main.math

execute if score $piglin_girl_level light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/variants/heavy/apply
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/variants/light/apply

execute if score $piglin_girl_level light_green.main.math matches 1 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/variants/default/apply
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/variants/no_mask/apply

execute unless score $piglin_girl_level light_green.main.math matches 2 unless score @s light_green.custom.health matches ..0 run return fail

execute as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/variants/light/apply
execute as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/variants/no_mask/apply

