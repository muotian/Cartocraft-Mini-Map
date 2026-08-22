$execute store result storage playsound:data volume int 1 run scoreboard players set $sound wool_purple.main.math $(volume)
execute store result storage playsound:data distance int 1 run scoreboard players operation $sound wool_purple.main.math *= $8 wool_purple.main.math
$data modify storage playsound:data voice set value "$(voice)"
$data modify storage playsound:data type set value "$(type)"
$data modify storage playsound:data pitch set value $(pitch)
execute positioned ~ ~ ~ run function ordered_splinter_playsound:sound with storage playsound:data