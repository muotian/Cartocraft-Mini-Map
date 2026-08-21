function light_green:item/golem/hand_cannon/laser_wave/water/box
particle bubble ^ ^ ^ 0 0 0 100000 1 force
particle bubble ^0.5 ^ ^ 0 0 0 100000 1 force
particle bubble ^1 ^ ^ 0 0 0 100000 1 force
particle bubble ^1.5 ^ ^ 0 0 0 100000 1 force
particle bubble ^2 ^ ^ 0 0 0 100000 1 force
particle bubble ^2.5 ^ ^ 0 0 0 100000 1 force
particle falling_water ^3 ^ ^ 0 0 0 0 1 force
particle bubble ^-0.5 ^ ^ 0 0 0 100000 1 force
particle bubble ^-1 ^ ^ 0 0 0 100000 1 force
particle bubble ^-1.5 ^ ^ 0 0 0 100000 1 force
particle bubble ^-2 ^ ^ 0 0 0 100000 1 force
particle bubble ^-2.5 ^ ^ 0 0 0 100000 1 force
particle falling_water ^-3 ^ ^ 0 0 0 0 1 force
function light_green:item/golem/hand_cannon/laser_wave/water/damage with storage light_green:weapon
execute at @s run tp @s ^ ^ ^0.375