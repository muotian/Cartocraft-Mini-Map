execute unless items entity @s weapon.mainhand *[custom_data~{weapon:{offhand:1}}] run return fail
item replace entity 0-0-0-0-2 container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity 0-0-0-0-2 container.0