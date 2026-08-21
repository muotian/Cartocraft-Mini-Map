
tag @s add white.mob.noodle_chef.tovoid
execute anchored eyes positioned ^ ^-0.75 ^ run function white:mob/noodle_chef/tovoid/toss {slot:"weapon.mainhand"}
execute anchored eyes positioned ^ ^-0.75 ^ run function white:mob/noodle_chef/tovoid/toss {slot:"weapon.offhand"}
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

# fx
playsound white:kirby_fall master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.5 0.75