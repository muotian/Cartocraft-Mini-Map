execute store result score $move light_green.main.math run execute if predicate light_green:move

execute if entity @s[tag=light_green.boss.graud_golem,type=magma_cube] run return run function light_green:mob/boss/graud_golem/tick
execute if entity @s[tag=light_green.boss.graud_golem_leg,type=husk] run return run function light_green:mob/boss/graud_golem/leg/tick
execute if entity @s[tag=light_green.boss.ground_laser,type=item_display] run return run function light_green:mob/boss/graud_golem/ground_laser/tick
execute if entity @s[tag=light_green.boss.ground_laser.ready,type=item_display] run return run function light_green:mob/boss/graud_golem/ground_laser/ready/tick
execute if entity @s[tag=light_green.boss.graud_golem.earth_quack,type=marker] run return run function light_green:mob/boss/graud_golem/earth_quack/tick
execute if entity @s[tag=light_green.boss.graud_golem.looking_target,type=marker] run return run function light_green:mob/boss/graud_golem/looking_laser/tick

execute if entity @s[tag=light_green.boss.big_hoglin,type=ravager] run return run function light_green:mob/boss/big_hoglin/tick

execute if entity @s[tag=light_green.boss.piglin_girl,type=piglin_brute] run return run function light_green:mob/boss/piglin_girl/tick

execute if entity @s[tag=light_green.blood,type=text_display] run return run function light_green:mob/boss/big_hoglin/rush_summon/blood/tick
execute if entity @s[tag=light_green.mud,type=text_display] run return run function light_green:mob/boss/big_hoglin/rush_summon/mud/tick
execute if entity @s[tag=light_green.drop_dirt,type=item] run return run function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/tick


execute if entity @s[tag=light_green.boss.piglin_girl.throw,type=item_display] run return run function light_green:mob/boss/piglin_girl/throw_thing/convert
execute if entity @s[tag=light_green.boss.piglin_girl.throw.down,type=item] run return run function light_green:mob/boss/piglin_girl/throw_thing/onground
execute if entity @s[tag=light_green.attack_range,type=item_display] run return run function light_green:mob/boss/piglin_girl/attack_range/convert

execute if entity @s[tag=light_green.crack,type=marker] run return run function light_green:mob/boss/piglin_girl/crack/tick