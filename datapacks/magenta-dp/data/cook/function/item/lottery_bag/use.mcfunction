#

advancement revoke @s only cook:use_lottery_bag

execute if score @s MagentaLotteryBagCD matches 1.. run return 0

scoreboard players set @s MagentaLotteryBagCD 4

item modify entity @s weapon.mainhand cook:removeone

execute store result score @s MagentaLotteryRandom run random value 1..16

# easy - fried_egg
execute if score @s MagentaLotteryRandom matches 1 run give @s egg

# easy - berry_bread
execute if score @s MagentaLotteryRandom matches 2 run give @s wheat
execute if score @s MagentaLotteryRandom matches 2 run give @s sweet_berries

# easy - berry_honey_brew
execute if score @s MagentaLotteryRandom matches 3 run give @s sweet_berries
execute if score @s MagentaLotteryRandom matches 3 run give @s honey_bottle

# easy - bread_roll
execute if score @s MagentaLotteryRandom matches 4 run give @s wheat
execute if score @s MagentaLotteryRandom matches 4 run give @s sugar

# easy - mushroom_risotto
execute if score @s MagentaLotteryRandom matches 5 run give @s wheat
execute if score @s MagentaLotteryRandom matches 5 run give @s brown_mushroom

# easy - pumpkin_soup
execute if score @s MagentaLotteryRandom matches 6 run give @s pumpkin
execute if score @s MagentaLotteryRandom matches 6 run function cook:item/ingredient/milk_bottle

# easy - grilled_meat_skewer
execute if score @s MagentaLotteryRandom matches 7 run give @s beef
execute if score @s MagentaLotteryRandom matches 7 run give @s brown_mushroom
execute if score @s MagentaLotteryRandom matches 7 run function cook:item/ingredient/cabbage

# easy - oatmeal
execute if score @s MagentaLotteryRandom matches 8 run give @s wheat
execute if score @s MagentaLotteryRandom matches 8 run function cook:item/ingredient/milk_bottle
execute if score @s MagentaLotteryRandom matches 8 run give @s honey_bottle

# easy - pudding
execute if score @s MagentaLotteryRandom matches 9 run function cook:item/ingredient/milk_bottle
execute if score @s MagentaLotteryRandom matches 9 run give @s egg
execute if score @s MagentaLotteryRandom matches 9 run give @s sugar

# easy - salad
execute if score @s MagentaLotteryRandom matches 10 run function cook:item/ingredient/cabbage
execute if score @s MagentaLotteryRandom matches 10 run give @s carrot
execute if score @s MagentaLotteryRandom matches 10 run give @s beetroot

# easy - farm_vegetable_soup
execute if score @s MagentaLotteryRandom matches 11 run function cook:item/ingredient/cabbage
execute if score @s MagentaLotteryRandom matches 11 run give @s carrot
execute if score @s MagentaLotteryRandom matches 11 run give @s potato
execute if score @s MagentaLotteryRandom matches 11 run give @s beetroot
execute if score @s MagentaLotteryRandom matches 11 run give @s pumpkin

# hard - roasted_pufferfish
execute if score @s MagentaLotteryRandom matches 12 run give @s pufferfish
execute if score @s MagentaLotteryRandom matches 12 run give @s kelp

# hard - spicy_stew
#execute if score @s MagentaLotteryRandom matches 13 run give @s beef
#execute if score @s MagentaLotteryRandom matches 13 run give @s blaze_powder
execute if score @s MagentaLotteryRandom matches 13 run function cook:item/ingredient/spices
execute if score @s MagentaLotteryRandom matches 13 run function cook:item/ingredient/spices
execute if score @s MagentaLotteryRandom matches 13 run function cook:item/ingredient/spices

# hard - candy_apple
execute if score @s MagentaLotteryRandom matches 14 run give @s sugar
execute if score @s MagentaLotteryRandom matches 14 run give @s honey_bottle
execute if score @s MagentaLotteryRandom matches 14 run give @s apple

# hard - meat_pie
execute if score @s MagentaLotteryRandom matches 15 run give @s beef
execute if score @s MagentaLotteryRandom matches 15 run give @s wheat
execute if score @s MagentaLotteryRandom matches 15 run give @s potato

# hard - meat_stew
execute if score @s MagentaLotteryRandom matches 16 run give @s beef
execute if score @s MagentaLotteryRandom matches 16 run function cook:item/ingredient/cabbage
execute if score @s MagentaLotteryRandom matches 16 run give @s potato
execute if score @s MagentaLotteryRandom matches 16 run give @s brown_mushroom
execute if score @s MagentaLotteryRandom matches 16 run function cook:item/ingredient/spices

# hard - scented_tea
#execute if score @s MagentaLotteryRandom matches 17 run give @s poppy 5
