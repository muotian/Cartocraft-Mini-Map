execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,type=!#no_hp,tag=wool_purple.sprint_target] run tag @s add wool_purple.collision_target
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run effect clear @s resistance
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run effect give @s slowness infinite 4 true
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run damage @s 10 mob_attack by a11-0-0-0-1
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target,tag=wool_purple.monster] run function ordered_splinter:monster/add_tag
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run attribute @s jump_strength modifier add wool_purple.archdemon_sprint -0.75 add_multiplied_total
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run particle explosion ~ ~0.75 ~ 0.1 0.1 0.1 0.5 3
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run playsound minecraft:block.anvil.land hostile @s ~ ~ ~ 2 0.1
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=wool_purple.collision_target] run playsound minecraft:entity.iron_golem.repair hostile @s ~ ~ ~ 2 0.2
execute at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,tag=wool_purple.collision_target,limit=1] run tag @s add wool_purple.ready_to_fire
execute as a11-0-0-0-1 facing entity @n[tag=wool_purple.sprint_target] feet run rotate @s ~ 0
execute facing entity @n[tag=wool_purple.sprint_target] feet run rotate @s ~ ~
function animated_java:archdemon/animations/sprint_end/play
scoreboard players set @s wool_purple.boss_animation 21
scoreboard players set @s wool_purple.boss_type 5