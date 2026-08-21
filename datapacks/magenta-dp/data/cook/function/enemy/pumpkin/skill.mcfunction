#

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s weapon.mainhand with air

effect give @s speed 3 1 true
effect give @s weakness 3 0 true

playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 1.5 0

scoreboard players add @s MagentaSkill 80
scoreboard players set @s MagentaTimer 0
