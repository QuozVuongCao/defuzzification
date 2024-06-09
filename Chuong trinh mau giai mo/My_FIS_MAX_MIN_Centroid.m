% My_FIS : Fuzzy Inference System
% Mien gia tri cua cac bien ra
y=0:0.01:24;

% Gia tri ro cua bien vao
x1=3;
x2=10;

% Khai bao cac gia tri ngon ngu
x1_LO=hlt_hinhthang(x1,-1,0,2,8);
x1_HI=hlt_hinhthang(x1,2,8,15,16);

x2_NE=hlt_hinhthang(x2,-31,-30,-15,0);
x2_ZE=hlt_hinhthang(x2,-15,0,0,15);
x2_PO=hlt_hinhthang(x2,0,15,30,31);

y_VL=hlt_hinhthang(y,-2,-1,0,4);
y_LO=hlt_hinhthang(y,0,4,4,10);
y_ME=hlt_hinhthang(y,4,10,12,16);
y_HI=hlt_hinhthang(y,12,16,16,24);
y_VH=hlt_hinhthang(y,16,24,24,25);

% Cac luat va suy luan mo
result = zeros(size(y));

beta1 = min(x1_LO,x2_NE);
y1 = Implication_MIN(beta1,y_VH);
result = Or_MAX(result,y1);

beta2 = min(x1_LO,x2_ZE);
y2 = Implication_MIN(beta2,y_HI);
result = Or_MAX(result,y2);

beta3 = min(x1_LO,x2_PO);
y3 = Implication_MIN(beta3,y_ME);
result = Or_MAX(result,y3);

beta4 = min(x1_HI,x2_NE);
y4 = Implication_MIN(beta4,y_ME);
result = Or_MAX(result,y4);

beta5 = min(x1_HI,x2_ZE);
y5 = Implication_MIN(beta5,y_LO);
result = Or_MAX(result,y5);

beta6 = min(x1_HI,x2_PO);
y6 = Implication_MIN(beta6,y_VL);
result = Or_MAX(result,y6);

% Ve ket qua suy luan
plot(y,result,'b')

% Giai mo trong tam
TS = 0;
MS = 0;
K=length(y);
for k=1:K
    TS = TS + y(k)*result(k);
    MS = MS + result(k);
end
y_defuz=TS/MS
    




