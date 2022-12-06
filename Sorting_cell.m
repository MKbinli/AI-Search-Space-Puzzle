function [ cells ] = Sorting_cell( cells )
for k=1:1:numel(cells)
minposition=1;
    
for j=2:1:numel(cells)
   n=cells{j}.fx;
   m=cells{minposition}.fx;
    if(lt(m,n))
        minposition=j;
    end
end
tmp=cells{k};
cells{k}=cells{minposition};
cells{minposition}=tmp;
end


end

