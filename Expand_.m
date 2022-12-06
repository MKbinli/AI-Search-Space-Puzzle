function [ new ] = Expand_( node,goal )
%yonler:eger tekrar ayný node'u sececekse cocuk node u secmemesi icin
%0=baslangýc
%1=sola hareket
%2=saða haraket
%3=yukarý hareket
%4=asagý hareket
%doruluk=1|0
i=1;
[row,col]=find(node.matris==0);
x=goal.matris;
if(row==1)
    
    new{i}.matris=node.matris;
    new{i}.matris(row+1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row+1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    %new{i}.yon=4;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
    i=i+1;
end
if(row==2)
    
    new{i}.matris=node.matris;
    new{i}.matris(row+1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row+1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    %new{i}.yon=4;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
    i=i+1;
    
    
    new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    %new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
   
    i=i+1;
    
end
if(row==3)
   
    new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
   %new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    
    new{i}.fx=new{i}.cost+new{i}.hx;
   
    i=i+1;
    
end
if(col==1)
    
    new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    %new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
   new{i}.fx=new{i}.cost+new{i}.hx;
    i=i+1;
    
end
if(col==2)
   
    new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     %new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
    i=i+1;
   
    
    new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     %new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
    i=i+1;
    
end
if(col==3)
    new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    %new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.fx=new{i}.cost+new{i}.hx;
    %i=i+1;
    
end
%i=i-1;
%for k=1:1:i
%minposition=1;
    
%for j=2:1:i
   % m=new{j}.fx;
  %  n=new{minposition}.fx;
  %  if(lt(m,n))
  %      minposition=j;
   % end
%end
%tmp=new{k};
%new{k}=new{minposition};
%new{minposition}=tmp;
%end
    
    %y.matris=new{minposition}.matris;
    %y.durum=new{minposition}.durum;
    %y.parent=new{minposition}.parent;
    %y.depth=new{minposition}.depth;
    %y.cost=new{minposition}.cost;
    %y.yon=new{minposition}.yon;
    %y.hx=new{minposition}.hx;
    %y.doruluk=new{minposition}.doruluk;
end

