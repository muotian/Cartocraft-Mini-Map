
# skill
execute if entity @s[tag=white.mob.noodle_chef.1] run return run function white:mob/noodle_chef/1/main
execute unless entity @s[tag=white.mob.noodle_chef.tovoid] run function white:mob/noodle_chef/tovoid/use

# cooldown
execute unless entity @s[tag=white.mob.noodle_chef.1.on_hurt] run return fail
execute if entity @s[tag=white.mob.noodle_chef.1.run] run return fail

execute if predicate white:mob/is_target run scoreboard players remove @s white.mob.cd 1
execute if score @s white.mob.cd matches ..0 run function white:mob/noodle_chef/1/use