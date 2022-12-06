function [ y ] = Expand( node,goal )
%yonler:eger tekrar ayn� node'u sececekse cocuk node u secmemesi icin
%0=baslang�c
%1=sola hareket
%2=sa�a haraket
%3=yukar� hareket
%4=asag� hareket
%doruluk=1|0
i=1;
[row,col]=find(node.matris==0);
x=goal.matris;
if(row==1)
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row+1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row+1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=4;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,3))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,3))
        else
            new{i}.matris=node.matris;
            new{i}.matris(row+1,col)=node.matris(row,col);
            new{i}.matris(row,col)=node.matris(row+1,col);
            new{i}.durum=node.durum+i;
            new{i}.parent=node.parent+1;
            new{i}.depth=node.depth+1;
            new{i}.cost=node.cost+1;
            new{i}.yon=4;
            matris=new{i}.matris;
            new{i}.hx=h(matris,x);
            new{i}.doruluk=0;
            i=i+1;
        end
    end
end
if(row==2)
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row+1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row+1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=4;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,3))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,3))
        else
            new{i}.matris=node.matris;
            new{i}.matris(row+1,col)=node.matris(row,col);
            new{i}.matris(row,col)=node.matris(row+1,col);
            new{i}.durum=node.durum+i;
            new{i}.parent=node.parent+1;
            new{i}.depth=node.depth+1;
            new{i}.cost=node.cost+1;
            new{i}.yon=4;
            matris=new{i}.matris;
            new{i}.hx=h(matris,x);
            new{i}.doruluk=0;
            i=i+1;
        end
    end
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,4))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,4))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
    i=i+1;
        end
    end
end
if(row==3)
   if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,4))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,4))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row-1,col)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row-1,col);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=3;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
    i=i+1;
        end
   end
end
if(col==1)
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
    new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,1))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,1))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
    i=i+1;
        end
    end
end
if(col==2)
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,1))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,1))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row,col+1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col+1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=2;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
    i=i+1;
        end
    end
    if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,2))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,2))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
     i=i+1;
        end
    end
end
if(col==3)
   if(isequal(node.doruluk,0))
    new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    if(isequal(node.yon,2))
       new{i}.doruluk=1;
    else
        new{i}.doruluk=0;
    end
    i=i+1;
    else if(isequal(node.yon,2))
        else
            new{i}.matris=node.matris;
    new{i}.matris(row,col-1)=node.matris(row,col);
    new{i}.matris(row,col)=node.matris(row,col-1);
    new{i}.durum=node.durum+i;
    new{i}.parent=node.parent+1;
    new{i}.depth=node.depth+1;
    new{i}.cost=node.cost+1;
     new{i}.yon=1;
    matris=new{i}.matris;
    new{i}.hx=h(matris,x);
    new{i}.doruluk=0;
     i=i+1;
        end
   end
end
i=i-1;
minposition=1;
    
for j=2:1:i
    m=new{j}.hx+new{j}.cost;
    n=new{minposition}.hx+new{minposition}.cost;
    if(lt(m,n))
        minposition=j;
    end
end

    
    y.matris=new{minposition}.matris;
    y.durum=new{minposition}.durum;
    y.parent=new{minposition}.parent;
    y.depth=new{minposition}.depth;
    y.cost=new{minposition}.cost;
    y.yon=new{minposition}.yon;
    y.hx=new{minposition}.hx;
    y.doruluk=new{minposition}.doruluk;
end

