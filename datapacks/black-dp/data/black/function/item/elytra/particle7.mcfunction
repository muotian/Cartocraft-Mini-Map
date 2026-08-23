# 更新計時器 (0-4 循環，代表五色)
scoreboard players add #elytra_timer icebird.core 1
execute if score #elytra_timer icebird.core matches 5.. run scoreboard players set #elytra_timer icebird.core 0

# --- 當計時器為 0：漢 (紅) ---
execute if score #elytra_timer icebird.core matches 0 run particle dust{color:[1,0,0],scale:2} ^0 ^0.05 ^0.1 0.5 0.2 0.5 0 10 force

# --- 當計時器為 1：滿 (黃) ---
execute if score #elytra_timer icebird.core matches 1 run particle dust{color:[1,1,0],scale:2} ^0 ^0.05 ^0.1 0.5 0.2 0.5 0 10 force

# --- 當計時器為 2：蒙 (藍) ---
execute if score #elytra_timer icebird.core matches 2 run particle dust{color:[0,0,1],scale:2} ^0 ^0.05 ^0.1 0.5 0.2 0.5 0 10 force

# --- 當計時器為 3：回 (白) ---
execute if score #elytra_timer icebird.core matches 3 run particle dust{color:[1,1,1],scale:2} ^0 ^0.05 ^0.1 0.5 0.2 0.5 0 10 force

# --- 當計時器為 4：藏 (黑) ---
execute if score #elytra_timer icebird.core matches 4 run particle dust{color:[0.1,0.1,0.1],scale:2} ^0 ^0.05 ^0.1 0.5 0.2 0.5 0 10 force

# --- 固定背景：雜亂的煙霧 (模擬軍事衝突的硝煙) ---
particle campfire_cosy_smoke ^0 ^0 ^0.5 0.2 0.2 0.2 0.05 1 force