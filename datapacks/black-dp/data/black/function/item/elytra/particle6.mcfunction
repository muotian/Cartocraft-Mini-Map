# 利用分數判定來決定黃色或紅色 (閃爍效果)
# --- 黃色脈衝 (當分數為 0, 1, 2 時) ---
execute if score #elytra_timer icebird.core matches 0..2 run particle dust{color:[1,0.9,0],scale:2.3} ^0 ^0.05 ^0.1 0 0 0 0 0 force
execute if score #elytra_timer icebird.core matches 0..2 run particle dust{color:[1,0.7,0],scale:1.9} ^-0.4 ^0.15 ^0.3 0 0 0 0 0 force
execute if score #elytra_timer icebird.core matches 0..2 run particle dust{color:[1,0.7,0],scale:1.9} ^0.4 ^0.15 ^0.3 0 0 0 0 0 force

# --- 紅色脈衝 (當分數為 3, 4 時) ---
execute if score #elytra_timer icebird.core matches 3..4 run particle dust{color:[1,0.1,0],scale:2.5} ^0 ^0.05 ^0.1 0 0 0 0 0 force
execute if score #elytra_timer icebird.core matches 3..4 run particle dust{color:[0.8,0,0],scale:2.1} ^-0.4 ^0.15 ^0.3 0 0 0 0 0 force
execute if score #elytra_timer icebird.core matches 3..4 run particle dust{color:[0.8,0,0],scale:2.1} ^0.4 ^0.15 ^0.3 0 0 0 0 0 force

# --- 剩餘的穩定粒子 (火焰煙霧) ---
particle dust{color:[0.5,0.5,0.5],scale:1.5} ^-1.5 ^0.45 ^0.9 0 0 0 0 0 force
particle dust{color:[0.2,0.2,0.2],scale:1.9} ^-1 ^0.3 ^0.6 0 0 0 0 0 force
particle dust{color:[0.5,0,0],scale:1.9} ^-0.8 ^0.25 ^0.5 0 0 0 0 0 force
particle dust{color:[0.8,0.2,0],scale:1.9} ^-0.6 ^0.2 ^0.4 0 0 0 0 0 force
particle dust{color:[0.8,0.2,0],scale:1.9} ^0.6 ^0.2 ^0.4 0 0 0 0 0 force
particle dust{color:[0.5,0,0],scale:1.9} ^0.8 ^0.25 ^0.5 0 0 0 0 0 force
particle dust{color:[0.2,0.2,0.2],scale:1.9} ^1 ^0.3 ^0.6 0 0 0 0 0 force
particle dust{color:[0.5,0.5,0.5],scale:1.5} ^1.5 ^0.45 ^0.9 0 0 0 0 0 force