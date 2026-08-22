#
$summon marker ~$(x) ~$(y) ~$(z) {Tags:["pink.bh.dust","new"]}

execute store result entity @n[tag=pink.bh.dust,tag=new] data.rx float 0.1 run random value 500..800
execute store result entity @n[tag=pink.bh.dust,tag=new] data.ry float 0.1 run random value -300..300
execute store result entity @n[tag=pink.bh.dust,tag=new] data.speed float 0.1 run random value 6..10

tag @n[tag=pink.bh.dust,tag=new] remove new
