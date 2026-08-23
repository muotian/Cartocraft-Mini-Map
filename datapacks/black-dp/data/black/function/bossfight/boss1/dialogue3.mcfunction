tellraw @s {translate:"black.boss1.dialogue3"}
scoreboard players set @s[scores={icebird.dialogue=1..}] icebird.dialogue 0

playsound item.book.page_turn block @s ~ ~ ~ 1 1 1
playsound block.portal.travel block @s ~ ~ ~ 0.6 2 0.6

#icebird.bossfight.error2 = §b§l§o<Disaster spirit>§7 回你媽!