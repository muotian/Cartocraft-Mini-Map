
execute if function white:move/sovereign_blade/is at @a[tag=white.target,limit=1] run return run function white:move/sovereign_blade/use

scoreboard players set #is_exchange white.main 0
execute if items entity @a[tag=white.target,limit=1] weapon.mainhand * run function white:mob/noodle_chef/1/exchange/mainhand
execute if items entity @a[tag=white.target,limit=1] weapon.offhand * run function white:mob/noodle_chef/1/exchange/offhand
execute if score #is_exchange white.main matches 0 run function white:mob/noodle_chef/1/3b