data modify storage tools:restore_aj find_id set value {tag:"",check_prefix:"",check_body:""}

data modify storage tools:restore_aj find_id.tag set from storage tools:restore_aj tags[0]
data modify storage tools:restore_aj find_id.check_prefix set string storage tools:restore_aj find_id.tag 0 3
data modify storage tools:restore_aj find_id.check_body set string storage tools:restore_aj find_id.tag 3 10
data modify storage tools:restore_aj find_id.tag set string storage tools:restore_aj find_id.tag 3

data modify storage tools:restore_aj split set value {str:"",chr:"",cat:""}
data modify storage tools:restore_aj split.str set from storage tools:restore_aj find_id.tag
execute if data storage tools:restore_aj find_id{check_prefix:"aj."} \
  unless data storage tools:restore_aj find_id{check_body:"global."} \
  unless data storage tools:restore_aj find_id{tag:""} \
  store result storage tools:restore_aj data.id_len int 1 run function tools:restore_aj/split
data modify storage tools:restore_aj data.id set from storage tools:restore_aj split.cat

execute unless data storage tools:restore_aj data{id_len:0} if data storage tools:restore_aj split{str:"root"} run return 0

data remove storage tools:restore_aj tags[0]
execute if data storage tools:restore_aj tags[0] run function tools:restore_aj/find_id
