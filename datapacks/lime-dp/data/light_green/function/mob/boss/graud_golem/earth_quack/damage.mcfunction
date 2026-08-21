execute store result score $Onground light_green.main.math run data get entity @s OnGround
execute if score $Onground light_green.main.math matches 1 run damage @s 3 mob_attack by @e[tag=light_green.boss.graud_golem,type=magma_cube,limit=1]
