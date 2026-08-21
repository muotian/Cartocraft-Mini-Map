import math
import os

# 產生 white datapack 的 fx_circle/0~N-1.mcfunction
# 數值待定 -> 直接改下面這幾個常數再重跑

OUT_DIR = os.path.dirname(os.path.abspath(__file__))

frames  = 20            # 幾個檔案 (= white.duration 的模數)
offset  = 2             # 粒子起點離中心的距離 (圓半徑)
radius  = 200000        # 方向向量的 x/y 長度 (只有 beam=True 時有用)
depth   = -1000000      # 方向向量的 z (往前) (只有 beam=True 時有用)
speed   = "0.00000025"  # particle 的 speed 參數 (只有 beam=True 時有用)
dust    = "minecraft:instant_effect{color:[0.200, 0.420, 0.835]}"

# instant_effect 是 SpellParticle，client 端會把 x/z 速度覆蓋成亂數，
# 方向向量存活不了 -> 預設用定點寫法 (跟這包其他 instant_effect 一致)。
# 想試原本的射線寫法就把這個改成 True。
beam    = False


def fmt(v, blank_zero=False):
    """把數字寫成 mcfunction 的 local coord，0 可選擇寫成空的 ^"""
    v = round(v, 3)
    if v == 0:
        return "^" if blank_zero else "^0"
    return "^" + ("%g" % v)


for i in range(frames):
    theta = math.radians(i * 360.0 / frames)
    cx = math.cos(theta)
    cy = math.sin(theta)

    lines = [""]
    for sign in (1, -1):
        ox = fmt(sign * offset * cx, blank_zero=True)
        oy = fmt(sign * offset * cy, blank_zero=True)
        if beam:
            dx = fmt(sign * radius * cx)
            dy = fmt(sign * radius * cy)
            motion = f"{dx} {dy} ^{depth} {speed}"
        else:
            motion = "0 0 0 0"
        lines.append(f"particle {dust} {ox} {oy} ^ {motion} 0 normal")
    lines.append("")

    with open(os.path.join(OUT_DIR, f"{i}.mcfunction"), "w") as f:
        f.write("\n".join(lines))

print(f"wrote {frames} files to {os.path.basename(OUT_DIR)}/")
