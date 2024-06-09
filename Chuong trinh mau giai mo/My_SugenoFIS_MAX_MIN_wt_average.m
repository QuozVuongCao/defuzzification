% My_SugenoFIS : Sugeno Fuzzy Inference System
clear all

% Gia tri ro cua bien vao
x1=-5;
x2=9;

% Khai bao cac gia tri ngon ngu
x1_NE=hlt_hinhthang(x1,-13,-12,-12,0);
x1_ZE=hlt_hinhthang(x1,-12,0,0,12);
x1_PO=hlt_hinhthang(x1,0,12,12,13);

x2_LO=hlt_hinhthang(x2,-1,0,1,6);
x2_ME=hlt_hinhthang(x2,1,6,6,11);
x2_HI=hlt_hinhthang(x2,6,11,12,13);

y_NB=-2;
y_NS=-1;
y_ZE=0;
y_PS=1;
y_PB=2;

% Cac luat va suy luan mo
beta1 = min(x1_NE,x2_LO);
y1 = y_NB;

beta2 = min(x1_NE,x2_ME);
y2 = y_NS;

beta3 = min(x1_NE,x2_HI);
y3 = y_ZE;

beta4 = min(x1_ZE,x2_LO);
y4 = y_NB;

beta5 = min(x1_ZE,x2_ME);
y5 = y_ZE;

beta6 = min(x1_ZE,x2_HI);
y6 = y_PB;

beta7 = min(x1_PO,x2_LO);
y7 = y_ZE;

beta8 = min(x1_PO,x2_ME);
y8 = y_PS;

beta9 = min(x1_PO,x2_HI);
y9 = y_PB;

% Giai mo trung binh co trong so


TS = beta1*y1+beta2*y2+beta3*y3+...
     beta4*y4+beta5*y5+beta6*y6+...
     beta7*y7+beta8*y8+beta9*y9;
MS = beta1+beta2+beta3+...
     beta4+beta5+beta6+...
     beta7+beta8+beta9;
 
y_defuz=TS/MS
    




