function [ mannathan ] = h(matris,goal_matris)
mannathan=0;
Degerler{1}.dizi=[0,1,2,1,2,3,2,3,4];
Degerler{2}.dizi=[1,0,1,2,1,2,3,2,3];
Degerler{3}.dizi=[2,1,0,3,2,1,4,3,2];
Degerler{4}.dizi=[1,2,3,0,1,2,1,2,3];
Degerler{5}.dizi=[2,1,2,1,0,1,2,1,2];
Degerler{6}.dizi=[3,2,1,2,1,0,3,2,1];
Degerler{7}.dizi=[2,3,4,1,2,3,0,1,2];
Degerler{8}.dizi=[3,2,3,2,1,2,1,0,1];
Degerler{9}.dizi=[4,3,2,3,2,1,2,1,0];
 for i=8:-1:1
     [row,col]=find(goal_matris==i);
     k=(row-1)*3+col;
     for m=9:-1:1
         if(Degerler{m}.dizi(1,k)==0)
             dizi=Degerler{m}.dizi;
         end
     end
     [x,y]=find(matris==i);
     k=(x-1)*3+y;
     mannathan=mannathan+dizi(1,k);
     
 end



end

