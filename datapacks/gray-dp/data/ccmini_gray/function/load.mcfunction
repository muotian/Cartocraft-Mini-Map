#rightclick
scoreboard objectives add gray.rightclick minecraft.used:minecraft.warped_fungus_on_a_stick
#leftclick
scoreboard objectives add gray.leftclick dummy
#id
scoreboard objectives add gray.id dummy
#玩家死亡
scoreboard objectives add gray.playerdie deathCount
#位子紀錄
scoreboard objectives add gray.Pos dummy
#運行時間紀錄
scoreboard objectives add gray.distance dummy
#存在時間紀錄
scoreboard objectives add gray.exist dummy
#Motion運算
scoreboard objectives add gray.Motion.x dummy
scoreboard objectives add gray.Motion.y dummy
scoreboard objectives add gray.Motion.z dummy
scoreboard objectives add gray.preMotion.x dummy
scoreboard objectives add gray.preMotion.y dummy
scoreboard objectives add gray.preMotion.z dummy
#計時器
scoreboard objectives add gray.hourglass_timer dummy
scoreboard objectives add gray.sfs_attack dummy
scoreboard objectives add gray.gopr_stop_attack dummy
scoreboard objectives add gray.gopr_cannot_use_flash dummy
#冷卻
scoreboard objectives add gray.hourglass_cd dummy
scoreboard objectives add gray.relic_of_dustwind_cd dummy
scoreboard objectives add gray.gopr_cd dummy
scoreboard objectives add gray.sfs_cd dummy
scoreboard objectives add gray.gopr.dodge.cd dummy
#拿起"韶華回響之砂"
scoreboard objectives add gray.take_gopr dummy
#"韶華回響之砂"模式(短劍正握=0，短劍反握=1，大劍=2)
scoreboard objectives add gray.gopr_mode dummy
#"韶華回響之砂"能量
scoreboard objectives add gray.gopr_energy dummy
#"韶華回響之砂"攻擊段數
scoreboard objectives add gray.gopr_attack_number dummy
#"韶華回響之砂"協同攻擊冷卻
scoreboard objectives add gray.gopr_cooperative_attack.cd dummy
#移動方向
scoreboard objectives add gray.moving_direction dummy
#位移無敵時間
scoreboard objectives add gray.gopr.invincibility.frames dummy
#額外無敵時間
scoreboard objectives add gray.gopr.invincibility.frames.additional dummy
#拿起"凝沙劍"
scoreboard objectives add gray.take_sfs dummy
#"凝沙劍"使用數量
scoreboard objectives add gray.sfs_amount dummy
#"死漠射騎"技能準備
scoreboard objectives add gray.desert_ranger_prepare dummy
#"死漠射騎"技能前搖
scoreboard objectives add gray.desert_ranger_anticipation dummy
#"烈沙焰火"被攻擊次數
scoreboard objectives add gray.pyrogrit.amount dummy
#地圖事件
scoreboard objectives add gray.map_event dummy
# 地圖事件對照 <中文名稱> <id> <變數種類>
# 烽火點燃數量 $beacon_amount int
execute unless score $beacon_amount gray.map_event matches 1.. run scoreboard players set $beacon_amount gray.map_event 0
# 拿取火種數量 $get_ember_amount int
execute unless score $get_ember_amount gray.map_event matches 1.. run scoreboard players set $get_ember_amount gray.map_event 0
# 用於跑boss甦醒劇情timer(若為-1則已完成劇情) $eventtimer.boss_wake int
# 關閉gopr特殊技能 $gopr_skill_locked boolean
# 用於跑boss虛弱劇情timer(若為-1則已完成劇情) $eventtimer.boss_weak int
# 用於跑boss壞結局劇情timer(若為-1則已完成劇情) $eventtimer.boss_bad_end int
# 棺材開啥 $coffin_loot int
# 確認有沒有持有gopr $taking_gopr boolean
# 引導書階段 $state int
execute unless score $state gray.map_event matches 1.. run scoreboard players set $state gray.map_event 0
# 紀錄引導標記顯現 $guide_display boolean


#boss data
scoreboard objectives add gray.boss.data dummy
#boss data對照 <中文名稱> <id> <變數種類>
#boss血條 $hp int
#boss階段 $stage int
#boss攻擊模式(0=特殊 1=近戰 2=遠程) $attack_mode int
#boss受傷量 $injury_amount int
#boss hitbox血量(用於計算受傷量) $hitbox_hp int
#boss攻擊冷卻 $attack.cd int
#boss隨機技能 $random int
#跑技能用timer $skill_timer int
#有多少玩家正在進行boss戰 $player_boss_battle_amount int
#撥放腳步動畫 $force_feet_animated boolean
#防止連續位移 $flash_cd boolean
#切換模式 $try_switch int
#腳步聲   $step_cd int
#喘息冷卻 $breath_cd int

#受傷
scoreboard objectives add gray.player.hurt dummy
scoreboard objectives add gray.player.hp health

#沙劍傷害冷卻，為確保一個目標不會重複受同把沙劍攻擊
scoreboard objectives add gray.boss.sandsword_1.cd dummy
scoreboard objectives add gray.boss.sandsword_2.cd dummy
scoreboard objectives add gray.boss.sandsword_3.cd dummy

#血條bossbar
bossbar add gray.boss.hp_display {translate:"gray.bossbar.hp_display"}

#guide input
scoreboard objectives add gray.guide_input trigger