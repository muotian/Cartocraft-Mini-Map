#

execute store result score @s MagentaRandom run random value 1..100

execute if score @s MagentaRandom matches ..20 run summon item ~ ~1 ~ {Item:{id:"clock",count:1,components:{item_model:"icer:mithril",custom_data:{icer.mithril:1b},custom_name:{"translate":"icer.mithril.name","italic":false}}},Motion:[0.1,0.3,0.1],PickupDelay:10,Tags:["MagentaMithrilDrop"]}
execute if score @s MagentaRandom matches ..20 run summon item ~ ~1 ~ {Item:{id:"clock",count:1,components:{item_model:"icer:mithril",custom_data:{icer.mithril:1b},custom_name:{"translate":"icer.mithril.name","italic":false}}},Motion:[-0.1,0.3,0.1],PickupDelay:10,Tags:["MagentaMithrilDrop"]}
execute if score @s MagentaRandom matches ..20 run summon item ~ ~1 ~ {Item:{id:"clock",count:1,components:{item_model:"icer:mithril",custom_data:{icer.mithril:1b},custom_name:{"translate":"icer.mithril.name","italic":false}}},Motion:[0,0.3,-0.2],PickupDelay:10,Tags:["MagentaMithrilDrop"]}
