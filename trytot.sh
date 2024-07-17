#!/bin/bash

# 提取 k-point 坐标
kpointsx=$(grep " k-point " PROCAR | awk '{print $4}')
kpointsy=$(grep " k-point " PROCAR | awk '{print $5}')
kpointsz=$(grep " k-point " PROCAR | awk '{print $6}')
# 提取band的能量信息
band1=$(grep "band     1 # energy" PROCAR | awk '{print $5}')
band2=$(grep "band     2 # energy" PROCAR | awk '{print $5}')
band3=$(grep "band     3 # energy" PROCAR | awk '{print $5}')
band4=$(grep "band     4 # energy" PROCAR | awk '{print $5}')
band5=$(grep "band     5 # energy" PROCAR | awk '{print $5}')
band6=$(grep "band     6 # energy" PROCAR | awk '{print $5}')
band7=$(grep "band     7 # energy" PROCAR | awk '{print $5}')
band8=$(grep "band     8 # energy" PROCAR | awk '{print $5}')
band9=$(grep "band     9 # energy" PROCAR | awk '{print $5}')
band10=$(grep "band    10 # energy" PROCAR | awk '{print $5}')
band11=$(grep "band    11 # energy" PROCAR | awk '{print $5}')
band12=$(grep "band    12 # energy" PROCAR | awk '{print $5}')
band13=$(grep "band    13 # energy" PROCAR | awk '{print $5}')
band14=$(grep "band    14 # energy" PROCAR | awk '{print $5}')
band15=$(grep "band    15 # energy" PROCAR | awk '{print $5}')
band16=$(grep "band    16 # energy" PROCAR | awk '{print $5}')
# 提取所有tot的信息
all_bands=$(grep -E "    1  " PROCAR | awk '{print $11}')

# 每隔16个提取一个值
tot1=$(echo "$all_bands" | awk 'NR % 16 == 1')
tot2=$(echo "$all_bands" | awk 'NR % 16 == 2')
tot3=$(echo "$all_bands" | awk 'NR % 16 == 3')
tot4=$(echo "$all_bands" | awk 'NR % 16 == 4')
tot5=$(echo "$all_bands" | awk 'NR % 16 == 5')
tot6=$(echo "$all_bands" | awk 'NR % 16 == 6')
tot7=$(echo "$all_bands" | awk 'NR % 16 == 7')
tot8=$(echo "$all_bands" | awk 'NR % 16 == 8')
tot9=$(echo "$all_bands" | awk 'NR % 16 == 9')
tot10=$(echo "$all_bands" | awk 'NR % 16 == 10')
tot11=$(echo "$all_bands" | awk 'NR % 16 == 11')
tot12=$(echo "$all_bands" | awk 'NR % 16 == 12')
tot13=$(echo "$all_bands" | awk 'NR % 16 == 13')
tot14=$(echo "$all_bands" | awk 'NR % 16 == 14')
tot15=$(echo "$all_bands" | awk 'NR % 16 == 15')
tot16=$(echo "$all_bands" | awk 'NR % 16 == 0')
# 将 k-points, band, tot的内容合并写入文件
paste <(echo "$kpointsx") <(echo "$kpointsy") <(echo "$kpointsz") <(echo "$band1") <(echo "$tot1") <(echo "$band2") <(echo "$tot2") <(echo "$band3") <(echo "$tot3") <(echo "$band4") <(echo "$tot4") <(echo "$band5") <(echo "$tot5") <(echo "$band6") <(echo "$tot6") <(echo "$band7") <(echo "$tot7") <(echo "$band8") <(echo "$tot8") <(echo "$band9") <(echo "$tot9") <(echo "$band10") <(echo "$tot10") <(echo "$band11") <(echo "$tot11") <(echo "$band12") <(echo "$tot12") <(echo "$band13") <(echo "$tot13") <(echo "$band14") <(echo "$tot14") <(echo "$band15") <(echo "$tot15") <(echo "$band16") <(echo "$tot16") > k-b-t.txt
# 输出完成信息
echo "信息已提取并写入k-b-t文件"

