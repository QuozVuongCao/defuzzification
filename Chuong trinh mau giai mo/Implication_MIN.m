function y=Implication_MIN(beta,muyB)
K=length(muyB);
y=zeros(size(muyB));
for k=1:K
    y(k)= min(beta,muyB(k));
end
end