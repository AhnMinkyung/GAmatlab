function Accuracy = UserFitFun_DT(Pop, data, tissue)

Accuracy=zeros(1,10);
long_table1=DataProcessing(Pop, data, 1, tissue);
[trainedClassifier,validAccuracy1]=DTclassifier(long_table1);
Accuracy(1,1)=validAccuracy1;
long_table2=DataProcessing(Pop, data, 2, tissue);
[trainedClassifier,validAccuracy2]=DTclassifier(long_table2);
Accuracy(1,2)=validAccuracy2;
long_table3=DataProcessing(Pop, data, 3, tissue);
[trainedClassifier,validAccuracy3]=DTclassifier(long_table3);
Accuracy(1,3)=validAccuracy3;
long_table4=DataProcessing(Pop, data, 4, tissue);
[trainedClassifier,validAccuracy4]=DTclassifier(long_table4);
Accuracy(1,4)=validAccuracy4;
long_table5=DataProcessing(Pop, data, 5, tissue);
[trainedClassifier,validAccuracy5]=DTclassifier(long_table5);
Accuracy(1,5)=validAccuracy5;
long_table6=DataProcessing(Pop, data, 6, tissue);
[trainedClassifier,validAccuracy6]=DTclassifier(long_table6);
Accuracy(1,6)=validAccuracy6;
long_table7=DataProcessing(Pop, data, 7, tissue);
[trainedClassifier,validAccuracy7]=DTclassifier(long_table7);
Accuracy(1,7)=validAccuracy7;
long_table8=DataProcessing(Pop, data, 8, tissue);
[trainedClassifier,validAccuracy8]=DTclassifier(long_table8);
Accuracy(1,8)=validAccuracy8;
long_table9=DataProcessing(Pop, data, 9, tissue);
[trainedClassifier,validAccuracy9]=DTclassifier(long_table9);
Accuracy(1,9)=validAccuracy9;
long_table10=DataProcessing(Pop, data, 10, tissue);
[trainedClassifier,validAccuracy10]=DTclassifier(long_table10);
Accuracy(1,10)=validAccuracy10;

end
