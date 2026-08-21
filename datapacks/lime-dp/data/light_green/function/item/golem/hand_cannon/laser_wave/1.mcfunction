function light_green:item/golem/hand_cannon/laser_wave/box
particle end_rod ^ ^ ^ 0 0 0 100000 1 force
particle end_rod ^0.5 ^ ^ 0 0 0 100000 1 force
particle end_rod ^1 ^ ^ 0 0 0 100000 1 force
particle end_rod ^1.5 ^ ^ 0 0 0 100000 1 force
particle end_rod ^2 ^ ^ 0 0 0 100000 1 force
particle end_rod ^2.5 ^ ^ 0 0 0 100000 1 force
particle reverse_portal ^3 ^ ^ 0 0 0 0 1 force
particle end_rod ^-0.5 ^ ^ 0 0 0 100000 1 force
particle end_rod ^-1 ^ ^ 0 0 0 100000 1 force
particle end_rod ^-1.5 ^ ^ 0 0 0 100000 1 force
particle end_rod ^-2 ^ ^ 0 0 0 100000 1 force
particle end_rod ^-2.5 ^ ^ 0 0 0 100000 1 force
particle reverse_portal ^-3 ^ ^ 0 0 0 0 1 force
function light_green:item/golem/hand_cannon/laser_wave/damage with storage light_green:weapon
execute at @s run tp @s ^ ^ ^0.5