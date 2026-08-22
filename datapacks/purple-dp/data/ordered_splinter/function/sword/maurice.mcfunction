advancement revoke @s only ordered_splinter:on_hurt
execute if items entity @s weapon.mainhand *[custom_data~{maurice: 1b}] if predicate ordered_splinter:20percentage run tag @s add maurice_user
execute as @e[tag=maurice_user] run effect give @s instant_health 1 0 true
execute as @e[tag=maurice_user] run playsound minecraft:block.anvil.land player @s ~ ~ ~ 1 2
tag @s remove maurice_user