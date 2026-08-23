playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 1.6
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 30 force
effect give @s instant_health
effect give @s strength 10 1 false
scoreboard players set $boss1.skill2 icebird.boss1 0
scoreboard players set $boss1.stop icebird.boss1 0
function black:bossfight/boss1/skill3/ini