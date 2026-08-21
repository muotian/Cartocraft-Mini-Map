execute as @a[tag=light_green.boss.challenger] run tellraw @s {text:""}
execute as @a[tag=light_green.boss.challenger] run tellraw @s [{text:"[!]"},{translate:"light_green:piglin_girl.dialog_when_end"}]
execute as @a[tag=light_green.boss.challenger] run gamemode survival @s
function light_green:arena/quit/0.
function light_green:npc_girl/win_summon