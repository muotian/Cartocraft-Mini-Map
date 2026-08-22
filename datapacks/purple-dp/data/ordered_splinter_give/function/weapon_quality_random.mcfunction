$data modify storage give:weapon type set value $(type)
$data modify storage give:weapon set set value $(set)
function ordered_splinter_give:chance/normal
function ordered_splinter_give:quality with storage give:weapon
function ordered_splinter_give:weapon with storage give:weapon