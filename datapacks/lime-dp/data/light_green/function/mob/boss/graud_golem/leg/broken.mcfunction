$scoreboard players set $leg light_green.main.math $(leg)
$execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/variants/leg$(leg)_broken/apply
execute as @n[tag=light_green.boss.graud_golem] run function light_green:mob/boss/graud_golem/skill/kurukuru
playsound entity.generic.explode hostile @a ~ ~ ~ 5 1
particle explosion ~ ~ ~ 0 0 0 0.1 20
kill @s