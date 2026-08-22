#
execute on passengers run data modify storage pink:monster s_name set from entity @s data.name
execute on passengers run data modify storage pink:monster s_summon set from entity @s data.summon

function pink:monster/b_summon with storage pink:monster {}
