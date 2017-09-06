V=std(datand)       %standard variation of dataset
M=mean(datand)      %mean of the data 
CV=V./M             %this is the coefficient of variation
ME=median(datand)   %median
MME=M./ME           %mean/median
LOM=meanm(datand)   %location of mean??????
g=ginicoeff(WGT,datand,true) %gini index
lx=log10(datand)    %take logs of the data
Vl=var(lx)          %variance of the logs