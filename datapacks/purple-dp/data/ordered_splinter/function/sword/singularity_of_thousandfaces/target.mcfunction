scoreboard players add @s wool_purple.singularity 1
execute if score @s wool_purple.singularity matches 40 run playsound block.stone_button.click_on player @a ~ ~ ~ 2 0.8
execute if score @s wool_purple.singularity matches 60 run playsound block.stone_button.click_on player @a ~ ~ ~ 2 1
execute if score @s wool_purple.singularity matches 80 run playsound block.stone_button.click_on player @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.singularity matches 100 run function ordered_splinter:sword/singularity_of_thousandfaces/singularity