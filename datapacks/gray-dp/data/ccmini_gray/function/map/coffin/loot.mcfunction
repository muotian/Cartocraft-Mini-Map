execute store result score $coffin_loot gray.map_event run random value 1..2
execute if score $coffin_loot gray.map_event matches 1 run return run summon husk
execute if score $coffin_loot gray.map_event matches 2 run loot spawn ~ ~ ~ loot ccmini_gray:coffin
