# 右側末端 (使用 portal 粒子混合)
particle portal ^1.5 ^0.45 ^0.9 0.1 0.1 0.1 0 5 force
particle portal ^1 ^0.3 ^0.6 0.1 0.1 0.1 0 3 force

# 中心過渡 (深紫 dust)
particle dust{color:[0.4,0,0.5],scale:1.9} ^-0.8 ^0.25 ^0.5 0 0 0 0 0 force
particle dust{color:[0.3,0,0.4],scale:1.9} ^-0.6 ^0.2 ^0.4 0 0 0 0 0 force
particle dust{color:[0.2,0,0.3],scale:1.9} ^-0.4 ^0.15 ^0.3 0 0 0 0 0 force
particle dust{color:[0.1,0,0.2],scale:1.9} ^-0.2 ^0.1 ^0.2 0 0 0 0 0 force

# 中心點 (亮紫核心)
particle dust{color:[0.6,0.1,0.8],scale:2.3} ^0 ^0.05 ^0.1 0 0 0 0 0 force

# 左側過渡 (對稱深紫 dust)
particle dust{color:[0.1,0,0.2],scale:1.9} ^0.2 ^0.1 ^0.2 0 0 0 0 0 force
particle dust{color:[0.2,0,0.3],scale:1.9} ^0.4 ^0.15 ^0.3 0 0 0 0 0 force
particle dust{color:[0.3,0,0.4],scale:1.9} ^0.6 ^0.2 ^0.4 0 0 0 0 0 force
particle dust{color:[0.4,0,0.5],scale:1.9} ^0.8 ^0.25 ^0.5 0 0 0 0 0 force

# 左側末端 (使用 portal 粒子混合)
particle portal ^-1 ^0.3 ^0.6 0.1 0.1 0.1 0 3 force
particle portal ^-1.5 ^0.45 ^0.9 0.1 0.1 0.1 0 5 force