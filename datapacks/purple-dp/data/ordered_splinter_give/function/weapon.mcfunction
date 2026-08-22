$data modify storage give:weapon type set value $(type)
$data modify storage give:weapon set set value $(set)
$execute store result storage give:weapon quality int 1 run scoreboard players set $quality wool_purple.main.math $(quality)
function ordered_splinter_give:quality_lore
function ordered_splinter_give:convert with storage give:weapon