$data modify storage light_green:daze second set value $(second)
execute at @s run summon item ~ ~ ~ {Item:{id:stick,components:{item_model:"light_green:nomodel"}},PickupDelay:-1,Tags:["light_green",'light_green.daze',"light_green.new_daze"]}
data modify entity @n[tag=light_green.new_daze] Motion set from entity @s Motion
ride @s mount @n[tag=light_green.new_daze]
execute store result score $armor light_green.main.math run attribute @s armor get
execute store result score $daze light_green.main.math run data get storage light_green:daze second 20
scoreboard players operation $daze_math light_green.main.math = $daze light_green.main.math
scoreboard players operation $daze_math light_green.main.math *= $75 light_green.main.math
scoreboard players operation $daze_math light_green.main.math /= $20 light_green.main.math
scoreboard players operation $armor light_green.main.math *= $daze_math light_green.main.math
scoreboard players operation $daze light_green.main.math *= $100 light_green.main.math
scoreboard players operation $daze light_green.main.math -= $armor light_green.main.math
execute store result score @n[tag=light_green.new_daze] light_green.main.math run scoreboard players operation $daze light_green.main.math /= $100 light_green.main.math
tag @n[tag=light_green.new_daze] remove light_green.new_daze