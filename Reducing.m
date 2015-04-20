function [addMat] = Reducing(mapMult,Nargin)

storeMat(Nargin) = mapMult;

if(mod(Nargin,2)~=0)
    storeMat(1,Nargin) = mapMult;
    addMat = 0;

elseif(mod(Nargin,2)==0)
    addMat = storeMat(1,Nargin-1)+storeMat(1,Nargin);
end

end