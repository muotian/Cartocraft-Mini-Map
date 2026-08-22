scoreboard players reset @s gray.distance
tp @s ~ ~ ~
particle cloud ~ ~0.5 ~ 0.5 1 0.5 0 60
playsound minecraft:entity.player.teleport hostile @a ~ ~ ~ 1 1

#end
scoreboard players set $attack.cd gray.boss.data 5
scoreboard players set $random gray.boss.data 0
scoreboard players set $skill_timer gray.boss.data 0
scoreboard players set $flash_cd gray.boss.data 1