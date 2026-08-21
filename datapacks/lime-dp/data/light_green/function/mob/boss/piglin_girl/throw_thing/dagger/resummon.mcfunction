execute at @s positioned ~ ~2 ~ run summon item_display ~ ~ ~ {Tags:["light_green","light_green.boss","light_green.boss.piglin_girl.throw","light_green.boss.piglin_girl.dagger","light_green.new.mob","light_green.mob"],item:{id:golden_spear,components:{item_model:"light_green:golden_dagger"}},transformation:{left_rotation:[0.707,0,0,0.707],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.5,1.5,1.5]},teleport_duration:1}
execute as @s at @s positioned ~ ~2 ~ facing entity @n[tag=light_green.boss.piglin_girl.throw_target] feet run rotate @n[tag=light_green.new.mob] ~ ~
scoreboard players set @n[tag=light_green.new.mob] light_green.mob.ai 3
execute as @n[tag=light_green.new.mob] run tag @s remove light_green.new.mob
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 3 2
particle minecraft:smoke ~ ~ ~ 0.25 1 0.25 0.01 500
kill @s