#手持時顯示生成位子預覽

scoreboard players add @s gray.distance 1
execute if function ccmini_gray:skills/relic_of_dustwind/if_end positioned ^ ^ ^-0.5 run return run function ccmini_gray:skills/relic_of_dustwind/rc
execute if score @s gray.distance matches ..30 positioned ^ ^ ^0.5 run function ccmini_gray:skills/relic_of_dustwind/hold
scoreboard players reset @s gray.distance