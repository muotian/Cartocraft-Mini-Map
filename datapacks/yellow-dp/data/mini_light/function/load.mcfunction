# 00000007-0000-0006-0000-000500000004
kill 00000007-0000-0006-0000-000500000004
summon marker 0.0 0.0 0.0 {UUID:[I;7,6,5,4], Tags:["mini_light.math_marker"]}

scoreboard objectives add mini_light.main dummy
scoreboard objectives add mini_light.duration dummy
scoreboard objectives add mini_light.skill dummy
scoreboard players set $2 mini_light.main 2

# 怪物
scoreboard objectives add mini_light.monster_cooldown dummy "怪物技能冷卻時間"
scoreboard objectives add mini_light.monster_duration dummy "怪物技能持續時間"
scoreboard objectives add mini_light.monster_prepare dummy "怪物技能準備時間"

# 怪物的鎖鏈喔耶~!
scoreboard objectives add mini_light.chain_blade.chain_life dummy "鎖鏈生命週期"

# 擊退怪擊退
scoreboard objectives add mini_light.knockback_guard.count dummy "擊退怪擊退"
scoreboard players set $2 mini_light.knockback_guard.count 2

# 惡兆掠奪
scoreboard objectives add mini_light.machine_gun.cd dummy "連射cd"
scoreboard objectives add mini_light.machine_gun.last dummy "連射剩餘"

# 超級換模者
scoreboard objectives add mini_light.super_evoker_vex dummy "超級換模者vex"
scoreboard objectives add mini_light.super_evoker_fangs dummy "超級換模者fangs"

# 裝備，靈魂寶石鞋子
scoreboard objectives add mini_light.soul_gem_boots.cd dummy "靈魂寶石鞋子的冷卻"


# 武器
scoreboard objectives add mini_light.damage dummy "武器傷害計算"
scoreboard objectives add mini_light.lantern_energy dummy "燈籠擊殺數"
scoreboard objectives add mini_light.candle_hit dummy "蠟燭打四下"
scoreboard players set $4 mini_light.candle_hit 4
scoreboard players set $3 mini_light.lantern_energy 3
scoreboard players set $2 mini_light.lantern_energy 2

scoreboard objectives add mini_light.spark_id dummy "火花ID系統"

scoreboard objectives add mini_light.counter_shield_id dummy "反擊鱗甲ID系統"
scoreboard objectives add mini_light.counter_shield_count dummy "反擊鱗甲數量"

scoreboard objectives add mini_light.knockback_trail dummy "爆炸軌跡"

scoreboard objectives add mini_light.collected_soul dummy "收集的靈魂"

scoreboard objectives add mini_light.soul_curse_duration dummy "靈魂火把詛咒剩餘時間"

# 燈籠相關
scoreboard objectives add mini_light.lantern.schedule dummy "煤炭燈籠抓動畫"
scoreboard objectives add mini_light.soul.schedule dummy "靈魂燈籠抓回執行者"
scoreboard objectives add mini_light.totem_duration dummy "圖騰持續時間"
scoreboard objectives add mini_light.copper_lantern_timer dummy "手持銅燈籠十秒獲得一點能量"

# 飾品相關
scoreboard objectives add mini_light.accessories dummy "飾品算數學"
scoreboard objectives add mini_light.vampire_bracelet_cd dummy "吸血手鐲冷卻"
scoreboard objectives add mini_light.anger_necklace_cd dummy "狂怒項鍊冷卻"

schedule function mini_light:weapons/schedule 1t

# 區域技能相關
scoreboard objectives add mini_light.area_skill_3_cast dummy "區域技能3施放"
scoreboard objectives add mini_light.use_goat_horn minecraft.used:minecraft.goat_horn "使用山羊角"

# 寶石鎬
scoreboard objectives add mini_light.break_spawner minecraft.mined:minecraft.spawner "挖生怪磚的次數"

# 手持附魔書冷卻
scoreboard objectives add mini_light.hand_enchanted_book.cd dummy "手持附魔書冷卻"