matris=[2,3,0;1,4,5;8,7,6];
goal_matris=[1,2,3;8,0,4;7,6,5];
[ problem ] = Problem_formulation_( matris,goal_matris);
[ goal ] = Goal_formulation( goal_matris );
[ solution ] = Search(problem,goal);
sonuc=solution.content();
%2,3,0;1,4,5;8,7,6
%1,2,5;7,0,8;3,6,4