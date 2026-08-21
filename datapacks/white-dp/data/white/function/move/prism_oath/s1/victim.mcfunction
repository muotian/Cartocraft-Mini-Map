
scoreboard players add @s white.move.prism_oath.count 2
execute if score @s white.move.prism_oath.count matches 10.. run scoreboard players set @s white.move.prism_oath.count 9
execute facing entity @a[tag=white.atker,limit=1] feet rotated ~180 -20 run function white:sys/motion {s:0.75}

# fx
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 2
particle minecraft:spit ~ ~1 ~ 0 0 0 0.2 10 force
particle minecraft:damage_indicator ~ ~ ~ 0.3 0.3 0.3 0 5 force