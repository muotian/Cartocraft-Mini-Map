#統計戰鬥中玩家數量
#戰場中心 summon marker ~ ~ ~ {Tags:[gray.boss.battle.center]}
execute as @e[type=marker,tag=gray.boss.battle.center,limit=1] at @s store result score $player_boss_battle_amount gray.boss.data positioned ~-25.5 ~ ~-25.5 if entity @a[dx=50,dy=25,dz=50,gamemode=!spectator]
execute positioned ~-25.5 ~ ~-25.5 as @a[dx=50,dy=25,dz=50,gamemode=!spectator,nbt={DeathTime:0s}] run gamemode adventure