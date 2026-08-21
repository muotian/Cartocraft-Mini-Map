$function light_green:random {math1:-$(rotate1),math2:$(rotate1)}
data modify storage light_green:boss rotate1 set from storage light_green:random random
$function light_green:random {math1:-$(rotate2),math2:$(rotate2)}
data modify storage light_green:boss rotate2 set from storage light_green:random random
$data modify storage light_green:boss power set value $(power)
function light_green:mob/boss/big_hoglin/dirt_armor/drop_dirt/summon2 with storage light_green:boss