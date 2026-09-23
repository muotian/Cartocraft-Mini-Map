## data modify storage tools:restore_aj split set value {str:"smth",chr:"",cat:""}

data modify storage tools:restore_aj split.chr set string storage tools:restore_aj split.str 0 1
data modify storage tools:restore_aj split.str set string storage tools:restore_aj split.str 1

execute if data storage tools:restore_aj split{chr:"."} run return run data get storage tools:restore_aj split.cat
function tools:restore_aj/split.cat with storage tools:restore_aj split

execute unless data storage tools:restore_aj split{str:""} run return run function tools:restore_aj/split
return 0
