function [ solution ] = Search(problem,goal)
fringe=CQueue;
solution=CQueue;
fringe.push(problem);
i=1;
while(i)
    node=fringe.pop();
    if(isequal(node.matris,goal.matris) && isequal(node.hx,goal.hx))
        solution.push(node);
        i=0;
    else
        solution.push(node);
        x=Expand_(node,goal);
        cells=fringe.content();
        fringe.remove();
        m=1;
        for j=numel(cells)+1:1:numel(x)+numel(cells)
         cells{j}=x{m};
         m=m+1;
        end
        [ cells ] = Sorting_cell( cells );
        for j=1:1:numel(cells)
        fringe.push(cells{j});
        end      
    end
    
end
end

