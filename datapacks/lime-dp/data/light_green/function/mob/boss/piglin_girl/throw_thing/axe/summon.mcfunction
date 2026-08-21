execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {Tags:["light_green.new.model","light_green.boss.piglin_girl.throw"],item:{id:golden_spear,components:{item_model:"light_green:double_axe"}},transformation:{left_rotation:[0,0,0.707,0.707],right_rotation:[0,0,0,1],translation:[0.4,0,0],scale:[1.5,1.5,1.5]},teleport_duration:1}
execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {Tags:["light_green","light_green.boss","light_green.boss.piglin_girl.throw","light_green.boss.piglin_girl.axe","light_green.new.mob","light_green.mob"]}
execute as @s if entity @n[tag=light_green.target] at @n[tag=light_green.target] anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ facing entity @s eyes facing ^ ^ ^-1 run rotate @n[tag=light_green.new.mob] ~ ~
execute as @s unless entity @n[tag=light_green.target] rotated ~ ~ run rotate @n[tag=light_green.new.mob] ~ ~
ride @n[tag=light_green.new.model] mount @n[tag=light_green.new.mob]
execute as @n[tag=light_green.new.mob] run tag @s remove light_green.new.mob
execute as @n[tag=light_green.new.model] run tag @s remove light_green.new.model
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 3 1