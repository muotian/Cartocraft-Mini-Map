#> assist:gateway/core/timer

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
scoreboard players operation $this assist.gateway.dest_id = @s assist.gateway.dest_id
scoreboard players operation $this assist.gateway.awake = @s assist.gateway.awake

execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=21}] as @e[type=minecraft:item_display,tag=assist.gateway.label,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run function assist:gateway/label/hide
execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=21}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 0.1 0.67
execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=21}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run function assist:gateway/menu/pedestle.move_up
execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=3}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run particle minecraft:dust_plume ~ ~0.5 ~ 0 0 0 0.05 10
execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=1}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run playsound minecraft:block.decorated_pot.insert block @a ~ ~0.5 ~ 0.25 0.75
execute as @s[scores={assist.gateway.active=2,assist.gateway.timer=1}] run function assist:gateway/menu/opened

execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=22}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run particle minecraft:dust_plume ~ ~0.5 ~ 0 0 0 0.05 10
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=21}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 0.1 0.67
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=21}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run playsound minecraft:block.decorated_pot.insert block @a ~ ~0.5 ~ 0.25 0.75
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=21}] as @e[type=minecraft:item,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run kill @s
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=21}] as @e[type=minecraft:block_display,tag=assist.gateway.pedestle,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id at @s run function assist:gateway/menu/pedestle.move_down
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=1}] as @e[type=minecraft:item_display,tag=assist.gateway.label,distance=0..5] if score @s assist.gateway.id = $this assist.gateway.id run function assist:gateway/label/show
execute as @s[scores={assist.gateway.active=4,assist.gateway.timer=1}] run function assist:gateway/menu/closed

scoreboard players remove @s assist.gateway.timer 1
