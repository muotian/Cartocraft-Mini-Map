
scoreboard players set #is_exchange white.main 1
data modify entity @s drop_chances.mainhand set value 100f
item replace entity @s weapon.mainhand from entity @a[tag=white.target,limit=1] weapon.mainhand
loot replace entity @a[tag=white.target,limit=1] weapon.mainhand loot white:mob/noodle