#
execute if score @s pink.mana_u matches 0.. run data modify storage pink:mana_bar mana set value ["\u9902\u1000","\u9902\u1000","\u9902\u1000","\u9902\u1000","\u9902\u1000","\u9902\u1000","\u9902\u1000","\u9902\u1000"]

execute if score @s pink.mana_v matches 1.. run function pink:mana_bar/v

# cd
scoreboard players operation $sec pink.star.skill.cd = @s pink.star.skill.cd
scoreboard players operation $sec pink.star.skill.cd /= $20 pink.star.skill.cd
scoreboard players set @s[scores={pink.star.skill.cd=..20}] pink.star.skill.cd 0

$execute if score @s pink.mana_u matches 1.. run data modify storage pink:mana_bar mana[0] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 2.. run data modify storage pink:mana_bar mana[1] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 3.. run data modify storage pink:mana_bar mana[2] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 4.. run data modify storage pink:mana_bar mana[3] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 5.. run data modify storage pink:mana_bar mana[4] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 6.. run data modify storage pink:mana_bar mana[5] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 7.. run data modify storage pink:mana_bar mana[6] set value "\u9902\u$(speed)001"
$execute if score @s pink.mana_u matches 8.. run data modify storage pink:mana_bar mana[7] set value "\u9902\u$(speed)001"

# strengthen_attack

execute if score @s pink.black.strengthen_attack matches 1.. run function pink:mana_bar/strengthen_attack

# white marker
execute unless score @s pink.white.protect_cd matches ..239 if data storage pink:mana_bar white_marker run data remove storage pink:mana_bar white_marker

execute if score @s pink.white.protect_cd matches ..239 run function pink:mana_bar/white_marker


# icon 
execute if score $sec pink.star.skill.cd matches 1..9 run title @s actionbar ["",{text:"\u9907\u9010","font":"pink:mana_bar"},{nbt:"white_marker",storage:"pink:mana_bar",font:"pink:white_marker"},{score:{name:"@s",objective:"pink.mana_u"},"font":"pink:u_number"},"   ",{text:"",color:"dark_aqua"},{nbt:"mana",storage:"pink:mana_bar",interpret:true,font:"pink:mana_bar"},"   ",{score:{name:"@s",objective:"pink.mana_v"},"font":"pink:v_number"},"",{text:"\u9010\u4001\u90040:0","font":"pink:mana_bar"},{score:{name:"$sec",objective:"pink.star.skill.cd"}},{text:"\u9940","font":"pink:mana_bar"}]
execute if score $sec pink.star.skill.cd matches 10.. run title @s actionbar ["",{text:"\u9010","font":"pink:mana_bar"},{nbt:"white_marker",storage:"pink:mana_bar",font:"pink:white_marker"},{score:{name:"@s",objective:"pink.mana_u"},"font":"pink:u_number"},"   ",{text:"",color:"dark_aqua"},{nbt:"mana",storage:"pink:mana_bar",interpret:true,font:"pink:mana_bar"},"   ",{score:{name:"@s",objective:"pink.mana_v"},"font":"pink:v_number"},"",{text:"\u9010\u4001\u900400:","font":"pink:mana_bar"},{score:{name:"$sec",objective:"pink.star.skill.cd"}},{text:"\u9940","font":"pink:mana_bar"}]
execute if score @s pink.star.skill.cd matches ..0 run title @s actionbar ["",{nbt:"white_marker",storage:"pink:mana_bar",font:"pink:white_marker"},{score:{name:"@s",objective:"pink.mana_u"},"font":"pink:u_number"},"   ",{text:"",color:"dark_aqua"},{nbt:"mana",storage:"pink:mana_bar",interpret:true,font:"pink:mana_bar"},"   ",{score:{name:"@s",objective:"pink.mana_v"},"font":"pink:v_number"}]
execute if score @s pink.star.skill1.card_count matches 1.. run title @s actionbar ["",{text:"\u9005\u9010\u9010\u9010\u9005","font":"pink:mana_bar"},{nbt:"white_marker",storage:"pink:mana_bar",font:"pink:white_marker"},{score:{name:"@s",objective:"pink.mana_u"},"font":"pink:u_number"},"   ",{text:"",color:"dark_aqua"},{nbt:"mana",storage:"pink:mana_bar",interpret:true,font:"pink:mana_bar"},"   ",{score:{name:"@s",objective:"pink.mana_v"},"font":"pink:v_number"},{text:"\u9010\u4000\u9004-\u9004","font":"pink:mana_bar"},{score:{name:"@s",objective:"pink.star.skill1.card_count"},font:"pink:mana_bar"}]

