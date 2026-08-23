execute if score $difficulty icebird.core matches 1..2 run dialog show @s black:boss1
execute if score $difficulty icebird.core matches 3 run dialog show @s black:boss1_hard
playsound block.roots.place block @s ~ ~ ~ 1 1 1
execute as @e[type=minecraft:interaction,tag=icebird.boss1_spirit,limit=1] run data remove entity @s interaction

#icebird.bossfight.ready1 = "§b§l§o<Disaster spirit>§r Are you ready for the battle?\n\n"
#icebird.bossfight.ready2 ="  ▶ Let's go! (start bossfight)\n\n"
#icebird.bossfight.ready3 ="  ▶ Let me prepare for a while.... (back to the lobby)\n\n"
#icebird.bossfight.ready4 ="  ▶ How to defeat the boss? (check skills)"
