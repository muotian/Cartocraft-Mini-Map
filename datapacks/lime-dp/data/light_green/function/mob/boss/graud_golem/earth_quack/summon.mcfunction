summon marker ~ ~ ~ {Tags:["light_green","light_green.mob","light_green.boss","light_green.boss.graud_golem.earth_quack","light_green.boss.graud_golem.new.earth_quack"]}
scoreboard players operation @n[tag=light_green.boss.graud_golem.new.earth_quack,type=marker] light_green.mob.ai = @n[tag=light_green.summon.earth_quack,type=marker] light_green.mob.ai
scoreboard players add @n[tag=light_green.boss.graud_golem.new.earth_quack,type=marker] light_green.mob.ai 1
$rotate @n[tag=light_green.boss.graud_golem.new.earth_quack,type=marker] $(rotate) 0
tag @n[tag=light_green.boss.graud_golem.new.earth_quack,type=marker] remove light_green.boss.graud_golem.new.earth_quack