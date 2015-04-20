function [outMat] = Mapping(dataMap1,dataMap2,nargin,temp)

outMat = dataMap1*dataMap2;
nargin = nargin+1;
resMap = Reducing(outMat,nargin);

    if(mod(nargin,2)==0)
        outMat(1,1)= resMap+temp;
    
    elseif(mod(nargin,4)==0)
        outMat(1,2) = resMap+temp;
        
    elseif(mod(nargin,6)==0)
        outMat(2,1) = resMap+temp;
       
    elseif(mod(nargin,8)==0)
        outMat(2,2) = resMap+temp;
    end
end
