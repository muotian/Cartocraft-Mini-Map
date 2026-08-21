# Made by 紙圓 & ChagGPT ;)
import os

# 輸入
hitbox = [5, 2, 5]

BASE_FILE = os.path.dirname(__file__)
RESULT_FILE = os.path.join(BASE_FILE, f"{hitbox[0]}x{hitbox[1]}x{hitbox[2]}.mcfunction")

def distance(x: float):
    if x < 1:
        return (x / 2) - 1, 0, round(1 - x, 2)
    return -(x / 2), x - 1, ""

# 計算
distances = [distance(val) for val in hitbox]
(dx0, dx1, dx2), (dy0, dy1, dy2), (dz0, dz1, dz2) = distances

# 指令
result = (
    f"execute positioned ~{dx0} ~{dy0} ~{dz0} "
    f"if entity @s[dx={dx1},dy={dy1},dz={dz1}]"
)

    # 如果 hitbox 有任何一項 < 1，加上第二段條件
if any(val < 1 for val in hitbox):
    result += (
        f" positioned ~{dx2} ~{dy2} ~{dz2} "
        f"if entity @s[dx={dx1},dy={dy1},dz={dz1}]"
    )

    # 結尾
result += " run return 1"

# 輸出
with open(RESULT_FILE, mode='w+') as f:
    f.write(result)