playsound green_wool:shoot2 block @a ~ ~ ~ 0.7 0.1
playsound minecraft:block.fire.extinguish block @a ~ ~ ~
particle cloud ^ ^1.5 ^2 0 0 0 0.1 20
particle cloud ^ ^1.5 ^1 0 0 0 0.1 20
tag @s add green_wool.steam_robot_hand_skill
execute positioned ^ ^1.5 ^3 as @e[distance=..3] run damage @s 15 player_attack by @p[tag=green_wool.steam_robot_hand_skill]
tag @s remove green_wool.steam_robot_hand_skill
playsound minecraft:entity.item.break block @s ~ ~ ~
execute if items entity @s weapon.mainhand *[damage=1] run item replace entity @s weapon.mainhand with air 1
execute if items entity @s weapon.mainhand *[custom_data={green_wool.steam_robot_hand:1b}] unless items entity @s weapon.mainhand *[damage=1] run item replace entity @s weapon.mainhand with netherite_nautilus_armor[max_damage=2,damage=1,custom_data={green_wool.steam_robot_hand:1b},item_model="green_wool:steam_robot_hand_item",item_name={"translate":"weapon.green_wool.steam_robot_hand"},consumable={consume_seconds:10000}] 1