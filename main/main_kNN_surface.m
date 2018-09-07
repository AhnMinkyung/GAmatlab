clear all;

tissue=cell(900,1);
for m=1:150
    tissue{m,1}='muscle(abdomen)';
end
for m=151:300
    tissue{m,1}='muscle(neck)';
end
for m=301:450
    tissue{m,1}='fat(abdomen)';
end
for m=451:600
    tissue{m,1}='fat(neck)';
end
for m=601:750
    tissue{m,1}='liver';
end
for m=751:900
    tissue{m,1}='lung';
end

ProbCross=0.7;
ProbMutation=0.001;
PopSize=10;
TerminationCondition=1000;

data=importdata('Cal6classSurfaceElectrodeData.xlsx');
Pop=InitPop_KS(PopSize, 20);
FitnessFunctionName = 'UserFitFun_kNN';
FitnessSave=zeros(1,TerminationCondition);
PopFitSave=cell(1,TerminationCondition);
for i=1:TerminationCondition
    Fitness=EvalFit(Pop, data, tissue, FitnessFunctionName);
    [FitnessSave(i),n]=max(Fitness);
    PopFitSave{1,i}=Pop(n,:);
    Pop=Selection(Pop,Fitness);
    Pop=Crossover(Pop,ProbCross);
    Pop=Mutation(Pop,ProbMutation);
end

[maxFit,n]=max(FitnessSave);
disp('Accuracy : ');
disp(maxFit);
maxPop=PopFitSave{1,n};
disp('Predictor : ');
disp(maxPop);