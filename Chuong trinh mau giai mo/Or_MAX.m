function y=Or_MAX(muyA,muyB)
K=length(muyA);
y=zeros(size(muyA));
for k=1:K
    y(k)= max(muyA(k),muyB(k));
end
end