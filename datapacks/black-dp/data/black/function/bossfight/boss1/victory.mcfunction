#停止計時
schedule clear black:bossfight/boss1/countdown
schedule clear black:bossfight/boss1/countdown_hard
schedule clear black:bossfight/boss1/death
schedule clear black:bossfight/boss1/tick
schedule clear black:bossfight/boss1/bossbar
schedule clear black:bossfight/boss1/loop
stopsound @a music
#清除召喚物
function black:bossfight/boss1/skill1/end
function black:bossfight/boss1/skill2/end
function black:bossfight/boss1/skill3/end
function black:bossfight/boss1/skill4/end
function black:bossfight/boss1/skill5/end
tp @n[type=zombie,tag=icebird.boss1] ~ ~-255 ~
kill @n[type=zombie,tag=icebird.boss1]
#恢復玩家狀態
effect clear @a poison
effect clear @a nausea
effect clear @a hunger
effect clear @a slowness
effect clear @a trial_omen
effect give @a instant_health 1 4
effect give @a saturation 2 10
gamemode adventure @a[gamemode=spectator]
function black:bossfight/boss1/rulereturn
bossbar set icebird.boss1_1 visible false
bossbar set icebird.boss1_2 visible false
bossbar set icebird.boss1_shield visible false
bossbar set icebird.boss1_skill visible false
scoreboard players reset @a icebird.DeathInBoss
tag @a remove icebird.bossfight_1

#victory
execute at @a run playsound entity.player.levelup block @a ~ ~ ~ 100 0.8
execute at @a run summon firework_rocket ~ ~3 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;11206400],fade_colors:[I;65433]}]}}}}
title @a times 0 1.5s 0
title @a title {"translate":"black.boss.victory","color":"green","bold":true}
title @a subtitle {"translate":"black.boss.victory2","color":"white","bold":true}

execute at @n[tag=black.boss1_center] run setblock ~ ~ ~ reinforced_deepslate
execute at @n[tag=black.boss1_center] run setblock ~ ~1 ~ minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[{Slot:1b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"},{Slot:4b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"},{Slot:7b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"},{Slot:9b,count:64,id:"minecraft:firework_rocket"},{Slot:10b,count:1,id:"minecraft:black_wool"},{Slot:11b,count:64,id:"minecraft:firework_rocket"},{Slot:12b,count:64,id:"minecraft:firework_rocket"},{Slot:13b,count:1,id:"minecraft:black_wool"},{Slot:14b,count:64,id:"minecraft:firework_rocket"},{Slot:15b,count:64,id:"minecraft:firework_rocket"},{Slot:16b,count:1,id:"minecraft:black_wool"},{Slot:17b,count:64,id:"minecraft:firework_rocket"},{Slot:19b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"},{Slot:22b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"},{Slot:25b,components:{"minecraft:custom_data":{black_elytra:1b},"minecraft:custom_name":{color:"#FF0000",extra:[{color:"#FF7F00",translate:"black.elytra.name.2"},{color:"#FFFF00",translate:"black.elytra.name.3"},{color:"#00FF00",translate:"black.elytra.name.4"},{color:"#00FFFF",translate:"black.elytra.name.5"},{color:"#0000FF",translate:"black.elytra.name.6"},{color:"#8B00FF",translate:"black.elytra.name.7"}],italic:0b,translate:"black.elytra.name.1"},"minecraft:enchantments":{"minecraft:fortune":10},"minecraft:lore":[{color:"white",italic:0b,translate:"black.item.elytra.lore.1"},{color:"white",italic:0b,translate:"black.item.elytra.lore.2"},{color:"white",italic:0b,translate:"black.item.elytra.lore.3"},{color:"white",italic:0b,translate:"black.item.elytra.lore.4"},{color:"white",italic:0b,translate:"black.item.elytra.lore.5"}],"minecraft:unbreakable":{}},count:1,id:"minecraft:elytra"}],components:{}}
execute at @n[tag=black.boss1_center] run fill ~13 ~ ~-5 ~13 ~6 ~5 air
# black.boss.victory = 恭喜勝利 (Congratulations!)
# black.boss.victory.2 = 你成功擊敗了ewe！ (You've defeated ewe!)