# 執行者、執行位置是鉤子
tp @s ^ ^ ^0.8
summon block_display ~ ~-0.8 ~ {block_state:{Name:"minecraft:iron_chain",Properties:{axis:"z"}},transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["mini_light.chain","new"]}
execute rotated as @s as @e[tag=mini_light.chain,tag=new] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=mini_light.chain,tag=new] mini_light.chain_blade.chain_life 15

tag @e[tag=mini_light.chain,tag=new] remove new
playsound minecraft:block.chain.place master @a[distance=..15] ~ ~ ~ 0.8 1





