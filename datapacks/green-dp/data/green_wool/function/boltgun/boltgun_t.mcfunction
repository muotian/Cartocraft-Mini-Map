advancement revoke @s only green_wool:weapon/boltgun
scoreboard players add @s[scores={green_wool.boltgun_bullet=1..}] green_wool.boltgun_number 1
execute if entity @s[scores={green_wool.boltgun_bullet=1..,green_wool.boltgun_number=1}] if items entity @s weapon.mainhand *[custom_data={green_wool.boltgun:1b}] run function green_wool:boltgun/boltgun_t-1
execute if entity @s[scores={green_wool.boltgun_number=2..}] run scoreboard players reset @s green_wool.boltgun_number
execute if items entity @s weapon.offhand *[custom_data={green_wool.boltgun:1b}] run scoreboard players add @s green_wool.boltgun_reloed 1 
execute if entity @s[scores={green_wool.boltgun_reloed=30..}] store result score @s green_wool.boltgun_bullet1 if items entity @s weapon.mainhand *[custom_data={green_wool.boltgun_bullet:1b}]
execute if entity @s[scores={green_wool.boltgun_reloed=30..,green_wool.boltgun_bullet1=20..}] if items entity @s weapon.mainhand *[custom_data={green_wool.boltgun_bullet:1b}] run function green_wool:boltgun/boltgun_t-2

#待辦:動畫(可加可不加).改傷害類型