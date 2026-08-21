# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

---

## 專案概述

這是一個 Minecraft 1.21.11 的 CTF 地圖資料包，命名空間為 `cook`。主題是「烹飪」，玩家需在地圖中蒐集食材、使用烹飪鍋製作料理。地圖包含自訂道具（鏟子、刀、法棍麵包）、敵人系統（蘑菇、豬、南瓜怪），以及進度解鎖的食譜系統。

**測試由使用者在遊戲中進行，不要自行假設測試結果。**

### 參考資料

根目錄的 `zh_tw.json` 是從材質包複製的繁體中文翻譯檔，包含所有自訂物品、實體、附魔、訊息的完整清單與中文名稱。此檔案有三個用途：
1. **物品清單**：確認某個物品或實體是否已存在。
2. **中文名稱**：新增物品時，中文顯示名稱以此為準。
3. **翻譯 key 命名規律**：新物品的 key 應遵循 `magenta.item.ITEMNAME.name`，lore 為 `magenta.item.ITEMNAME.lore` 或 `.lore_N`；實體為 `magenta.entity.ENTITYNAME.name`。

---

## 架構總覽

```
data/
├── cook/                   主命名空間
│   ├── advancement/        進度（包含食譜解鎖觸發）
│   ├── damage_type/        自訂傷害類型
│   ├── enchantment/        自訂附魔
│   ├── function/           所有 .mcfunction 邏輯
│   ├── item_modifier/      物品修改器
│   ├── loot_table/         掉落表（實體掉落食材）
│   ├── predicate/          條件判斷
│   └── tags/               實體與物品標籤
└── minecraft/
    └── tags/function/      load.json / tick.json 掛鉤
```

### 核心迴圈

- `load.mcfunction`：初始化所有計分板，所有新計分板都在這裡宣告。
- `tick.mcfunction`：主迴圈，所有需要每刻執行的系統都從這裡呼叫。

---

## 食譜系統思想

### 食譜依食材數量分層

食譜函式位於 `function/cooking/recipes/`，依食材數量分為 `items1` ~ `items5` 子資料夾。每個資料夾有一個 `all.mcfunction` 作為該層的總入口，依序嘗試各食譜直到匹配為止。

這個設計的核心思想是：**先縮小候選範圍（食材數量），再判斷具體組合**，避免每刻對所有食譜做完整比對。

新增食譜時，參考同資料夾內現有檔案的寫法。

### 料理輸出的統一基底

所有料理輸出都使用同一種 Minecraft 原版物品作為底層，再透過組件（components）賦予自訂外觀、名稱、食用效果。這讓物品在沒有資源包的情況下仍能正常存在，不會崩壞存檔。

**參考指標性檔案**：`function/cooking/recipes/items2/` 內任一食譜。

### 烹飪時間等級

烹飪時間（`MagentaTimer`，單位：刻）反映食譜難度，與進度等級一致：
- **easy**（少食材）→ 短時間
- **hard**（多食材）→ 中等時間
- **sp**（特殊）→ 最長時間

### 進度（Advancement）是食譜說明書

每道食譜都有一個對應的進度 JSON，作用是讓玩家在「食譜書」介面看到配方說明。進度的等級（`easy` / `hard` / `sp`）決定其 parent 與 frame，並影響在書中的顯示位置。

**參考指標性檔案**：`advancement/recipe/easy/` 與 `advancement/recipe/sp/` 各一個，對照差異。

---

## 道具系統思想

### custom_data 是道具的身份證

每個自訂道具都必須帶有唯一的 `custom_data` 標籤。函式內所有對道具的偵測（主手持有、裝備中、容器內）都依賴這個標籤，而非物品 ID。這讓底層物品可以自由替換，不影響邏輯。

**參考指標性檔案**：`function/cooking/cooking.mcfunction`（示範如何偵測主手道具）。

### 計分板是道具狀態的載體

道具的冷卻、充能、持續時間等狀態都存在計分板中。計分板命名慣例為 `Magenta` + 道具名 + 狀態縮寫（如 `MagentaKnifeCD`）。所有計分板必須在 `load.mcfunction` 中宣告。

### 有主動技能的道具結構

技能類道具固定拆成兩個函式：`use`（冷卻判斷與觸發條件）和 `skill`（實際效果）。`use` 函式從 `tick.mcfunction` 呼叫，`skill` 函式只在條件滿足時才被呼叫。

**參考指標性檔案**：`function/item/knife/use.mcfunction` 與 `function/item/knife/skill.mcfunction`。

### 有掉落來源的道具

若道具由怪物掉落，掉落邏輯定義在 `loot_table/entities/` 中，並在召喚函式裡設定 `DeathLootTable` 指向它。

---

## 新增食譜 SOP

1. **決定食材數量**，對應 `items1` ~ `items5` 資料夾。

2. **建立食譜函式**，參考同資料夾內現有食譜的結構（食材判斷 → 設定烹飪時間 → 設定輸出物品）。

3. **在 `all.mcfunction` 中新增呼叫**，放在最後，沿用現有的防重複觸發模式。

4. **建立進度 JSON**，依難度選擇 `easy` / `hard` / `sp` 資料夾，參考同資料夾現有檔案設定 parent、frame、icon 與觸發條件。

5. **一致性抽查**：從同資料夾隨機挑一個現有食譜（函式與進度各一），對照新寫的檔案，確認抽象結構相符（欄位順序、命名風格、觸發模式等），而非只看功能是否正確。

---

## 新增道具 SOP

1. **決定底層 Minecraft 物品**，參考現有道具的選擇邏輯（近戰武器選可帶屬性的物品，消耗品選外觀合適的物品）。

2. **建立道具函式** `function/item/TOOL_NAME.mcfunction`，設定 `custom_data` 識別標籤與 `item_model` 自訂模型。

3. **若有主動技能**：在 `load.mcfunction` 宣告冷卻計分板，建立 `use` 與 `skill` 子函式，並在 `tick.mcfunction` 掛上呼叫。參考 `function/item/knife/`。

4. **若有被動效果**：在適當的 tick 函式中加入裝備偵測邏輯。參考 `cooking.mcfunction` 中對廚師帽/制服的處理。

5. **若由怪物掉落**：建立 `loot_table/entities/SOURCE.json`，在召喚函式中設定 `DeathLootTable`。

6. **一致性抽查**：從現有道具中隨機挑一個結構相近的（同樣有冷卻、或同樣由怪物掉落），對照新寫的檔案，確認抽象結構相符。
