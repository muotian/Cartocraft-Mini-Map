# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.gale_blade
execute unless score @s brown_wool.gale_blade.cd2 matches 1.. if score @s brown_wool.gale_blade.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.gale_blade",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.gale_blade.cd2 matches 1.. if score @s brown_wool.gale_blade.cd matches 1.. run scoreboard players set @s brown_wool.gale_blade.cd2 20
execute unless score @s brown_wool.gale_blade.cd matches 1.. run effect give @s speed 5 2 true
execute unless score @s brown_wool.gale_blade.cd matches 1.. at @s as @a[distance=..5] run playsound entity.firework_rocket.launch master @s
execute unless score @s brown_wool.gale_blade.cd matches 1.. at @s run particle dust{color:[1, 1, 1],scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0.1 300
execute unless score @s brown_wool.gale_blade.cd matches 1.. run scoreboard players set @s brown_wool.gale_blade.cd2 20
execute unless score @s brown_wool.gale_blade.cd matches 1.. run scoreboard players set @s brown_wool.gale_blade.cd 400


