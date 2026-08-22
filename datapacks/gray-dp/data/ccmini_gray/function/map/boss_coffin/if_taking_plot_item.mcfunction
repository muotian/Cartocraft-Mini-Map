execute store success score $taking_gopr gray.map_event run clear @a[distance=..10,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={grit_of_pristine_revival:true}] 0
execute if score $taking_gopr gray.map_event matches 1 run return 0
return 1