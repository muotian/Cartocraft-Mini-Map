particle dust{color:16711680,scale:1} ^ ^ ^ 0 0 0 10000 1 force
particle dust{color:16711680,scale:1} ^ ^ ^0.5 0 0 0 10000 1 force
scoreboard players add $looking_laser light_green.main.math 1
execute unless block ^ ^ ^1 #light_green:not positioned ~ ~ ~ run return run summon marker ~ ~ ~ {Tags:["light_green.boss.graud_golem.looking_target","light_green","light_green.boss","light_green.mob"]}
execute if score $looking_laser light_green.main.math matches 25.. run return run summon marker ~ ~ ~ {Tags:["light_green.boss.graud_golem.looking_target","light_green","light_green.boss","light_green.mob"]}
execute unless score $looking_laser light_green.main.math matches 25.. positioned ^ ^ ^1 run function light_green:mob/boss/graud_golem/looking_laser/ready/1