data modify storage tools:restore_aj check_suffix set value {tag:"",check_prefix:"",check_id:"",dot:""}

data modify storage tools:restore_aj check_suffix.tag set from storage tools:restore_aj tags[0]
data modify storage tools:restore_aj check_suffix.check_prefix set string storage tools:restore_aj check_suffix.tag 0 3
data modify storage tools:restore_aj check_suffix.tag set string storage tools:restore_aj check_suffix.tag 3
$data modify storage tools:restore_aj check_suffix.check_id set string storage tools:restore_aj check_suffix.tag 0 $(id_len)
$data modify storage tools:restore_aj check_suffix.tag set string storage tools:restore_aj check_suffix.tag $(id_len)
data modify storage tools:restore_aj check_suffix.dot set string storage tools:restore_aj check_suffix.tag 0 1
data modify storage tools:restore_aj check_suffix.tag set string storage tools:restore_aj check_suffix.tag 1

data modify storage tools:restore_aj split set value {str:"",chr:"",cat:""}
data modify storage tools:restore_aj split.str set from storage tools:restore_aj check_suffix.tag
$execute if data storage tools:restore_aj check_suffix{check_prefix:"aj."} \
  if data storage tools:restore_aj check_suffix{check_id:"$(id)"} \
  if data storage tools:restore_aj check_suffix{dot:"."} \
  unless data storage tools:restore_aj check_suffix{tag:""} \
  run function tools:restore_aj/split

execute if data storage tools:restore_aj split{cat:"animation"} run return 1
execute if data storage tools:restore_aj split{cat:"variant"} run return 1

data remove storage tools:restore_aj tags[0]
execute if data storage tools:restore_aj tags[0] run return run function tools:restore_aj/check_suffix with storage tools:restore_aj data
return 0
