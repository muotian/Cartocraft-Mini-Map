scoreboard players add $breath_cd gray.boss.data 1

execute if score $breath_cd gray.boss.data matches ..29 run return 0
scoreboard players reset $breath_cd gray.boss.data
particle dust{color:[1.0,1.0,1.0],scale:1}