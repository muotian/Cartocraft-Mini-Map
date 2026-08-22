data modify storage give:weapon common_chance_min set value 1
execute store result storage give:weapon common_chance_max int 1 run scoreboard players set $chance wool_purple.main.math 56

execute store result storage give:weapon handy_chance_min int 1 run scoreboard players operation $chance wool_purple.main.math += $1 wool_purple.main.math
scoreboard players set $increase_chance wool_purple.main.math 22
execute store result storage give:weapon handy_chance_max int 1 run scoreboard players operation $chance wool_purple.main.math += $increase_chance wool_purple.main.math

execute store result storage give:weapon fine_chance_min int 1 run scoreboard players operation $chance wool_purple.main.math += $1 wool_purple.main.math
scoreboard players set $increase_chance wool_purple.main.math 13
execute store result storage give:weapon fine_chance_max int 1 run scoreboard players operation $chance wool_purple.main.math += $increase_chance wool_purple.main.math

execute store result storage give:weapon superior_chance_min int 1 run scoreboard players operation $chance wool_purple.main.math += $1 wool_purple.main.math
scoreboard players set $increase_chance wool_purple.main.math 5
execute store result storage give:weapon superior_chance_max int 1 run scoreboard players operation $chance wool_purple.main.math += $increase_chance wool_purple.main.math

execute store result storage give:weapon masterwork_chance_min int 1 run scoreboard players operation $chance wool_purple.main.math += $1 wool_purple.main.math
scoreboard players set $increase_chance wool_purple.main.math 1
execute store result storage give:weapon masterwork_chance_max int 1 run scoreboard players operation $chance wool_purple.main.math += $increase_chance wool_purple.main.math