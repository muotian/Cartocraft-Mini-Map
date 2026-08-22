scoreboard players add @s gray.distance 1
#軌跡
particle falling_dust{block_state:{Name:sand}} ~ ~ ~
#是否撞到東西
execute on vehicle run function ccmini_gray:skills/portable_sandstorm/if_touch
#飛太久
execute if score @s gray.distance matches 40.. run function ccmini_gray:skills/portable_sandstorm/summon