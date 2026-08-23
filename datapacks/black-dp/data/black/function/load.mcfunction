# All functions, bossfights, and designs in Area 16 in CartoCraft Mini were created, designed, and programmed by "小冰鳥IceBird" and "JaCkY99".
# CartoCraft Mini 第16區所有指令、Boss戰、以及相關設計均為"小冰鳥IceBird"及"JaCkY99"建立、設計、編寫。

#icebird.spell_cast：核心標籤，用於讀條偵測
#icebird.spell_<AreaColor>.<ID>：用於獨立各區域的各種施法者，例如`icebird.spell_brown.1

#scoreboard
scoreboard objectives add icebird.spell_cd dummy "施放法術冷卻"
scoreboard objectives add icebird.spell_ready dummy "施放法術"
scoreboard objectives add icebird.spell_counter.cd dummy "中斷法術冷卻"

scoreboard objectives add icebird.boss1 dummy
scoreboard objectives add icebird.dialogue trigger "小冰鳥boss精靈對話"
scoreboard objectives add icebird.DeathInBoss deathCount "在小冰鳥boss戰死亡"
scoreboard objectives add icebird.core dummy "小冰鳥核心記分板"
scoreboard objectives add black.core_cd dummy "核心冷卻"
scoreboard objectives add black.core_attack_cd dummy "核心攻擊冷卻"
scoreboard objectives add black.element dummy
scoreboard players set #-1 icebird.core -1

# 壓制紙圓區域的"秘術"🥵
#tellraw @a [{'text':"reloaded"},{player:{id:[I;566530016,-682409366,-1978636385,-1664539610],name:"Hamburger_0112",properties:[{name:"textures",signature:"HZqPsPmlS4jCr7QNl8949uFxmdEn34rwhoiHqEhjpLdGOkbMuSjOh69PL6vT/ChRh+QQPwlO2cnsNTPpq/sl8BkvkePtjaIiKr4BZiQapCXgILYhSj73iRfwBrcaFWBkoQtSNwgy+WWguHRPPZhdt+4R8nnljrQc4M2khEN45hjy0X7TxC4v+JWergENYuekvdWCtevCG3tvGbgIh6sI6rvD4Es0zmM6AZEmHB+jpDuv3pbuXli4fFVhL/f3zqUJoYnN3U8I+rD0dRJR+3JxWbn89zOek/dHMLQXD+QH/LLac/wPMulOCP3QlOrL12kGuQt7iJbAwUIEY4GgB+Rqrepo7YyprIdv2qrUo4JY0fHTW0+IGNhdj5iqON/rotNIYlaCNvdAXsMAivu3OGCBfVigUC+TaGFmwCVfu1mpQXzjAmyZtESTOgApyKKSni1mcGpYEu2jtaOPZq/sF1+jyhGCspXrIQnK2Q6sKuLiNpTLC6Ji5hjHvuxiyiebC4/tRygRBX80H4W6f8AsrBCXyvlaWYfYlYbfBX8uY5bYhZQk7nhhBW6UloUToOfg+f8QxoxLKnLkQ/ake/EsE46iY+sCvP4C9rdRKTq+DeBkNR2yNk1ayni/11yu/6TiS3qIwFMHOCmfp95cZprEidyCMfqpaNSkDHyeYKKYod4pWmY=",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2NTcwNjkyODE3NCwKICAicHJvZmlsZUlkIiA6ICIyMWM0OGZlMGQ3NTM0MjZhOGExMDY3OWY5Y2M5MjQyNiIsCiAgInByb2ZpbGVOYW1lIiA6ICJIYW1idXJnZXJfMDExMiIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hZTAzNTRkNTQxMjk5NzUyNDc0ZGIwYjhkZGU4MWRjYjNmNzliY2IwNzg0NGFmZjVlNDk4YTAxZDJiODg3NjZiIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}}]
scoreboard objectives add black.boss_real.hp dummy "小冰鳥Boss真實血量"
scoreboard objectives add black.boss_fake.hp dummy "小冰鳥Boss虛假血量"
scoreboard objectives add black.boss_hpmax dummy "小冰鳥Boss最大血量"

#Jacky's
scoreboard objectives add black.temp dummy
scoreboard objectives add black.y dummy
scoreboard objectives add black.rc minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add black.sneak minecraft.custom:sneak_time
scoreboard objectives add black.mheart dummy
scoreboard objectives add black.mheart_cd dummy
scoreboard objectives add black.machine_gun_reload dummy
scoreboard objectives add black.machine_gun_cd dummy
scoreboard objectives add black.dark_angel_reload dummy
scoreboard objectives add black.dark_angel_cd dummy
scoreboard players set #black.-1 black.temp -1
data modify storage black temp.mheart1.dmg set value 0
data modify storage black temp.machine_gun.clear set value 0
data modify storage black temp.dark_angel.clear set value 0
data modify storage black temp.xy set value {x:0,y:0}


#team
team add icebird.red "小冰鳥紅色"
team add icebird.bl "小冰鳥淺藍"
team add icebird.purple "小冰鳥紫色"
team add icebird.blue "小冰鳥藍"
team add icebird.yellow "小冰鳥黃"
team add icebird.gray "小冰鳥灰"
team modify icebird.red color dark_red
team modify icebird.bl color aqua
team modify icebird.purple color dark_purple
team modify icebird.blue color dark_blue
team modify icebird.yellow color yellow
team modify icebird.gray color gray
team modify icebird.red collisionRule never
team modify icebird.bl collisionRule never
team modify icebird.purple collisionRule never
team modify icebird.blue collisionRule never
team modify icebird.yellow collisionRule never

#bossbar
bossbar add icebird.boss1_1 {"translate":"black.bossbar.1","color":"yellow","bold":true}
bossbar add icebird.boss1_2 {"translate":"black.bossbar.2","color":"dark_purple","bold":true}
bossbar add icebird.boss1_shield {"translate":"black.bossbar.3","color":"white","bold":true}
bossbar add icebird.boss1_skill {"translate":"ewe","color":"white","bold":true}
bossbar set icebird.boss1_1 color red
bossbar set icebird.boss1_2 color red
bossbar set icebird.boss1_shield color white
bossbar set icebird.boss1_skill color yellow

