data modify storage white:sys/player/motion/internal/temp matrix.ix set from storage white:sys/player/motion/internal/temp vec_i[0]
data modify storage white:sys/player/motion/internal/temp matrix.iz set from storage white:sys/player/motion/internal/temp vec_i[2]

data modify storage white:sys/player/motion/internal/temp matrix.jx set from storage white:sys/player/motion/internal/temp vec_j[0]
data modify storage white:sys/player/motion/internal/temp matrix.jy set from storage white:sys/player/motion/internal/temp vec_j[1]
data modify storage white:sys/player/motion/internal/temp matrix.jz set from storage white:sys/player/motion/internal/temp vec_j[2]

data modify storage white:sys/player/motion/internal/temp matrix.kx set from storage white:sys/player/motion/internal/temp vec_k[0]
data modify storage white:sys/player/motion/internal/temp matrix.ky set from storage white:sys/player/motion/internal/temp vec_k[1]
data modify storage white:sys/player/motion/internal/temp matrix.kz set from storage white:sys/player/motion/internal/temp vec_k[2]

function white:sys/player/motion/internal/math/global/matrix_to_vector with storage white:sys/player/motion/internal/temp matrix

return 1