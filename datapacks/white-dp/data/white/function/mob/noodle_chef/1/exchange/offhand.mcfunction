
scoreboard players set #is_exchange white.main 1
data modify entity @s drop_chances.offhand set value 100f
item replace entity @s weapon.offhand from entity @a[tag=white.target,limit=1] weapon.offhand
loot replace entity @a[tag=white.target,limit=1] weapon.offhand loot white:mob/noodle