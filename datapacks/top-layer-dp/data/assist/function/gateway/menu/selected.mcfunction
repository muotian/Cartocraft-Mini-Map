#> assist/gateway/menu/selected

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
data modify storage assist:gateway args set from entity @s data

playsound minecraft:ui.button.click block @a ~ ~0.5 ~ 1 1
playsound minecraft:entity.experience_orb.pickup block @a ~ ~0.5 ~ 1 1

execute as @e[type=minecraft:item,distance=0..10,tag=assist.gateway.dest] if score @s assist.gateway.id = $this assist.gateway.id run team leave @s
team join assist.gateway.light_purple @n[type=minecraft:item,distance=0..0.5,tag=assist.gateway.pedestle]

execute as @e[type=minecraft:interaction,distance=0..5,tag=assist.gateway.core] if score @s assist.gateway.id = $this assist.gateway.id at @s run function assist:gateway/menu/close_dest
