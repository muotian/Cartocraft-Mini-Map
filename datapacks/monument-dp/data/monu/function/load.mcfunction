#tellraw @a {"text":"monu loaded.","color":"aqua"}

scoreboard objectives add monu_timer dummy
scoreboard objectives add monu_return dummy
scoreboard objectives add monu_complete_step dummy
scoreboard objectives add monu_complete_flag dummy

scoreboard players set $global monu_complete_step 0
scoreboard players set $global monu_complete_flag 0

data modify storage monu:points white set value {color:"white", monu_tag:"monu_white", star_tag:"star_white", msg_1:"monu_white_1", msg_2:"monu_white_2", const:"monu_const_white", chat_color:"#F9FFFE", fw_color:16383998}
data modify storage monu:points orange set value {color:"orange", monu_tag:"monu_orange", star_tag:"star_orange", msg_1:"monu_orange_1", msg_2:"monu_orange_2", const:"monu_const_orange", chat_color:"#F9801D", fw_color:16351261}
data modify storage monu:points magenta set value {color:"magenta", monu_tag:"monu_magenta", star_tag:"star_magenta", msg_1:"monu_magenta_1", msg_2:"monu_magenta_2", const:"monu_const_magenta", chat_color:"#C74EBD", fw_color:13061821}
data modify storage monu:points light_blue set value {color:"light_blue", monu_tag:"monu_light_blue", star_tag:"star_light_blue", msg_1:"monu_light_blue_1", msg_2:"monu_light_blue_2", const:"monu_const_light_blue", chat_color:"#3AB3DA", fw_color:3847130}
data modify storage monu:points yellow set value {color:"yellow", monu_tag:"monu_yellow", star_tag:"star_yellow", msg_1:"monu_yellow_1", msg_2:"monu_yellow_2", const:"monu_const_yellow", chat_color:"#FED83D", fw_color:16701501}
data modify storage monu:points lime set value {color:"lime", monu_tag:"monu_lime", star_tag:"star_lime", msg_1:"monu_lime_1", msg_2:"monu_lime_2", const:"monu_const_lime", chat_color:"#80C71F", fw_color:8439583}
data modify storage monu:points pink set value {color:"pink", monu_tag:"monu_pink", star_tag:"star_pink", msg_1:"monu_pink_1", msg_2:"monu_pink_2", const:"monu_const_pink", chat_color:"#F38BAA", fw_color:15961002}
data modify storage monu:points gray set value {color:"gray", monu_tag:"monu_gray", star_tag:"star_gray", msg_1:"monu_gray_1", msg_2:"monu_gray_2", const:"monu_const_gray", chat_color:"#474F52", fw_color:4673362}
data modify storage monu:points light_gray set value {color:"light_gray", monu_tag:"monu_light_gray", star_tag:"star_light_gray", msg_1:"monu_light_gray_1", msg_2:"monu_light_gray_2", const:"monu_const_light_gray", chat_color:"#9D9D97", fw_color:10329495}
data modify storage monu:points cyan set value {color:"cyan", monu_tag:"monu_cyan", star_tag:"star_cyan", msg_1:"monu_cyan_1", msg_2:"monu_cyan_2", const:"monu_const_cyan", chat_color:"#169C9C", fw_color:1481884}
data modify storage monu:points purple set value {color:"purple", monu_tag:"monu_purple", star_tag:"star_purple", msg_1:"monu_purple_1", msg_2:"monu_purple_2", const:"monu_const_purple", chat_color:"#8932B8", fw_color:8991416}
data modify storage monu:points blue set value {color:"blue", monu_tag:"monu_blue", star_tag:"star_blue", msg_1:"monu_blue_1", msg_2:"monu_blue_2", const:"monu_const_blue", chat_color:"#3C44AA", fw_color:3949738}
data modify storage monu:points brown set value {color:"brown", monu_tag:"monu_brown", star_tag:"star_brown", msg_1:"monu_brown_1", msg_2:"monu_brown_2", const:"monu_const_brown", chat_color:"#835432", fw_color:8606770}
data modify storage monu:points green set value {color:"green", monu_tag:"monu_green", star_tag:"star_green", msg_1:"monu_green_1", msg_2:"monu_green_2", const:"monu_const_green", chat_color:"#5E7C16", fw_color:6192150}
data modify storage monu:points red set value {color:"red", monu_tag:"monu_red", star_tag:"star_red", msg_1:"monu_red_1", msg_2:"monu_red_2", const:"monu_const_red", chat_color:"#B02E26", fw_color:11546150}
data modify storage monu:points black set value {color:"black", monu_tag:"monu_black", star_tag:"star_black", msg_1:"monu_black_1", msg_2:"monu_black_2", const:"monu_const_black", chat_color:"#1D1D21", fw_color:1908001}

function monu:5t