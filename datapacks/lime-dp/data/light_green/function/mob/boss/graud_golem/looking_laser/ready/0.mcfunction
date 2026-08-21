scoreboard players set $looking_laser light_green.main.math 0
playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 3 2
execute facing entity @p feet run function light_green:mob/boss/graud_golem/looking_laser/ready/1