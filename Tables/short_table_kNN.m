
%엑셀파일의 데이터 불러오기
data=importdata('Cal6classShortElectrodeData.xlsx')

tissue=cell(900,1)
for m=1:150
    tissue{m,1}='muscle(abdomen)'
end
for m=151:300
    tissue{m,1}='muscle(neck)'
end
for m=301:450
    tissue{m,1}='fat(abdomen)'
end
for m=451:600
    tissue{m,1}='fat(neck)'
end
for m=601:750
    tissue{m,1}='liver'
end
for m=751:900
    tissue{m,1}='lung'
end

mag_1=data([1:900],1)
mag_6=data([1:900],6)
mag_8=data([1:900],8)
mag_10=data([1:900],10)
pha_1=data([1:900],11)
pha_2=data([1:900],12)
pha_3=data([1:900],13)
pha_6=data([1:900],16)
pha_7=data([1:900],17)
pha_8=data([1:900],18)
data_short_table=table(mag_1,mag_6,mag_8,mag_10,...
    pha_1,pha_2,pha_3,pha_6,pha_7,pha_8,tissue)
