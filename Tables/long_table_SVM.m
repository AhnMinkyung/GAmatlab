
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
mag_3=data([1:900],3)
mag_5=data([1:900],5)
pha_1=data([1:900],11)
pha_3=data([1:900],13)
pha_4=data([1:900],14)
pha_6=data([1:900],16)
pha_8=data([1:900],18)
data_long_table=table(mag_2,mag_3,mag_5,...
    pha_1,pha_3,pha_4,pha_6,pha_8,tissue)
