clear all
clc

matrix1 = [4 7;2 6];
matrix1 = matrix1';
matrix2 = [0.6,-0.7;-0.2,0.4];
i = 1;passarg=0;k = 1;
ind=1;inc=1;

[row1,col1] = size(matrix1);
[row2,col2] = size(matrix2);

maxS = max(row1+col1,row2+col2);


%Read data reduced
for j=1:8
    if(j<=8)
        if(ind==3||ind==7)
           i=i-2; 
        elseif(k == 5)
           k = k-4; 
        end
       dataMap1 = matrix1(i);
       dataMap2= matrix2(k);
       if(j==1)
            resMat = Mapping(dataMap1,dataMap2,passarg,0);
       else
            resMat = Mapping(dataMap1,dataMap2,passarg,resMat);
       end
       
       if(j==2||j==4||j==6||j==8)
        if(resMat<0.1)
                resMat=0;
        end
          FinalResult(inc) = resMat
       end
       i = i+1;
       k = k+1;
       ind=ind+1;
       passarg=passarg+1;
    end
end