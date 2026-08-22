#右鍵生成沙塵暴並冷卻
particle crit ~ ~ ~ 0.3 0.3 0.3 0 5 force @s
execute if function ccmini_gray:skills/relic_of_dustwind/if_on_cd run function ccmini_gray:skills/relic_of_dustwind/summon
