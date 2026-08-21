effect clear @s invisibility
item replace entity @s armor.head with player_head[profile={id:[I;156881065,-1009759955,-2123553812,1649038593],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZlOGJjYjE2OWE1N2QxYWNiN2E5NDcwZWQ5ZTEzN2FkNmQ1YjIxODZlOTdjMGRjMDYyOTljMDhmNzgwMmY5NyJ9fX0="}]}]
item replace entity @s armor.chest with chainmail_chestplate[trim={material:"diamond",pattern:"flow"}]
item replace entity @s armor.legs with chainmail_leggings[trim={material:"diamond",pattern:"flow"}]
item replace entity @s armor.feet with chainmail_boots[trim={material:"diamond",pattern:"flow"}]
item replace entity @s weapon.mainhand with iron_sword[item_model="iron_sword"]
tag @s remove mini_light.in_dark
playsound item.armor.equip_chain hostile @a ~ ~ ~ 0.5 1
playsound item.shovel.flatten hostile @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~ ~ .5 1 .5 0 50