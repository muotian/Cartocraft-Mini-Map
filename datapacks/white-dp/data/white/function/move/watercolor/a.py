import os
import math

def fmt(value):
    """四捨五入到小數第四位，並去掉多餘的 0 與負零 (0.0 -> '0', 1.0 -> '1')"""
    value = round(value, 4) + 0.0  # + 0.0 消除 -0.0
    text = f"{value:.4f}".rstrip("0").rstrip(".")
    return text if text not in ("", "-0") else "0"


def generate_commands():
    # 1. 取得檔案執行的路徑
    current_dir = os.path.dirname(os.path.abspath(__file__))

    # 2. 計算座標並生成指令列表
    # 從 0 度到 180 度平均取 num_points 個點。
    # 點數必須是奇數，正中間才會剛好落在 90 度 (^0 ^0 ^1)。
    # 注意: 不能用 range(0, 181, 4)，因為 4 無法整除 90，
    #       會直接從 88 度跳到 92 度，中間的正前方那條射線就不見了。
    num_points = 45
    pos_commands = []
    for i in range(num_points):
        degree = i * 180 / (num_points - 1)

        # 將角度轉為弧度以供 math 函數使用
        rad = math.radians(degree)

        # 根據公式計算座標
        x = -math.cos(rad)
        y = (degree - 90) / 90 * 0.25
        z = math.sin(rad)

        # 格式化指令字串 (保留四位小數以保持精確度)
        cmd = f"execute facing ^{fmt(x)} ^{fmt(y)} ^{fmt(z)} positioned ^ ^ ^1 run function white:move/watercolor/liquid/use"
        pos_commands.append(cmd)

    # 3. 平均分配到 1~5.mcfunction
    num_files = 5
    total_commands = len(pos_commands)
    
    # 計算每個檔案應分得的基礎數量與餘數
    base_size = total_commands // num_files
    remainder = total_commands % num_files
    
    current_index = 0
    for i in range(1, num_files + 1):
        filename = f"{i}.mcfunction"
        filepath = os.path.join(current_dir, filename)
        
        # 計算此檔案應包含的指令數量 (將餘數分配給前面的檔案)
        current_file_size = base_size + (1 if i <= remainder else 0)
        file_content = pos_commands[current_index : current_index + current_file_size]
        current_index += current_file_size
        
        # 寫入檔案
        with open(filepath, "w", encoding="utf-8") as f:
            f.write("\n".join(file_content))
            
    print(f"成功！已在 {current_dir} 生成 1~{num_files}.mcfunction，共處理 {total_commands} 條指令。")

if __name__ == "__main__":
    generate_commands()