
%���������� ������ �ҷ�����
data=importdata('Cal6classLongElectrodeData.xlsx')

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

mag_2=data([1:900],2)
mag_8=data([1:900],8)
mag_10=data([1:900],10)
pha_1=data([1:900],11)
pha_2=data([1:900],12)
pha_9=data([1:900],19)
pha_10=data([1:900],20)
data_long_table=table(mag_2,mag_8,mag_10,pha_1,pha_2,pha_9,pha_10,tissue)
