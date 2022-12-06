function [ problem ] = Problem_formulation( matris,goal_matris)
if(matris==goal_matris)
    return 
else
    problem.matris=matris;
    problem.durum=1;
    problem.parent=0;
    problem.depth=0;
    problem.cost=0;
    problem.hx=h(matris,goal_matris);
    problem.yon=0;
    problem.doruluk=0;
end
end

