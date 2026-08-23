kill @n[tag=icer.mithril_talisman.testing]

give @p clock[max_stack_size=1,minecraft:item_model="minecraft:blaze_powder",custom_data={icer.light:1b},custom_name=[{"text":"","extra":[{"text":"☼","italic":false,"color":"#F5E275"},{"translate":"icer.light.name","italic":false,"bold":true,"color":"#F4D43B"},{"text":"☼","italic":false,"color":"#F3C500"}]}],lore=[{"text":""},{"text":"❝","color":"gray"},{"text":"וַיֹּאמֶר אֱלֹהִים יְהִי אוֹר וַיְהִי אוֹר    ","color":"gray"},{"text":"                                             ❞","color":"gray"},{"text":""},{"translate":"icer.item.effect","italic":false,"color":"white"},{"text":""},{"translate":"icer.light.effect1","italic":false,"color":"white"},{"translate":"icer.light.effect2","italic":false,"color":"white"},{"translate":"icer.light.effect3","italic":false,"color":"white"},{"translate":"icer.light.effect4","italic":false,"color":"white"},{"text":""},{"translate":"icer.angel_bless.effect1","italic":false,"color":"dark_gray"},{"translate":"icer.angel_bless.effect2","italic":false,"color":"dark_gray"},{"translate":"icer.angel_bless.effect3","italic":false,"color":"dark_gray"},{"translate":"icer.angel_bless.effect4","italic":false,"color":"dark_gray"},{"text":""},{"text":""}]]
summon lightning_bolt ~ ~ ~

particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.5 50 force

data merge entity @s {Motion:[0.0d,1.8d,0.0d]}
data modify entity @s DeathLootTable set value ""
kill @s