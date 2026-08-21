particle wax_on ^ ^ ^ 0 0 0 10000000 1
particle wax_on ^ ^ ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-1 ^ 0 0 0 10000000 1
particle wax_on ^ ^-1 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-2 ^ 0 0 0 10000000 1
particle wax_on ^ ^-2 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-3 ^ 0 0 0 10000000 1
particle wax_on ^ ^-3 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-4 ^ 0 0 0 10000000 1
particle wax_on ^ ^-4 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-5 ^ 0 0 0 10000000 1
particle wax_on ^ ^-5 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-6 ^ 0 0 0 10000000 1
particle wax_on ^ ^-6 ^0.5 0 0 0 10000000 1

particle wax_on ^ ^-7 ^ 0 0 0 10000000 1
particle wax_on ^ ^-7 ^0.5 0 0 0 10000000 1

scoreboard players add $laser light_green.main.math 1
execute unless block ^ ^ ^1 #light_green:not run return fail
execute unless score $laser light_green.main.math matches 40.. positioned ^ ^ ^1 rotated ~ 0 run function light_green:mob/boss/graud_golem/laser/ready/1