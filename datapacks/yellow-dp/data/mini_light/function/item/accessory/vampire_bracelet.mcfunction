advancement revoke @s only mini_light:accessories/vampire_bracelet
execute store result score $max_health mini_light.accessories run attribute @s max_health get
execute store result score $current_health mini_light.accessories run data get entity @s Health 100
scoreboard players operation $current_health mini_light.accessories /= $max_health mini_light.accessories
execute if score $current_health mini_light.accessories matches ..50 run function mini_light:item/accessory/vampire_effect