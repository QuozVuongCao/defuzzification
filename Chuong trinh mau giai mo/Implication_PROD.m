function y=Implication_PROD(beta,muyB)
K=length(muyB);
y=zeros(size(muyB));
for k=1:K
    y(k)= beta*muyB(k);
end
end