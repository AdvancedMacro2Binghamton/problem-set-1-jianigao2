%coefficient of variation
V=std(datand)       %standard variation of each data
M=mean(datand)      %mean of the data 
CV=V./M             %this is the coefficient of variation (coeffient of variation is standard variance devided by the mean)

%Mean/median
ME=median(datand)   %median of each data
MME=M./ME           %mean/median

%log variance 
earning_positive=earning(earning>0)
v1=var(log10(earning_positive))%varince of logs of earning
income_positive=income(income>0)
v2=var(log10(income_positive))%variance of logs of income
wealth_positive=wealth(wealth>0)
v3=var(log10(wealth_positive))%variance of logs of wealth

%top 1%/lowest40%
top_e=sort(earning(:),'descend')
top_e1=sum(top_e(1:ceil(length(top_e)*0.01))) %top 1% of earning
low_e=sort(earning(:),'ascend')
low_e40=sum(low_e(1:ceil(length(low_e)*0.4))) %lowest 40% of earning
ratioearning=top_e1/low_e40 % ratio of earning

top_i=sort(income(:),'descend')
top_i1=sum(top_i(1:ceil(length(top_i)*0.01))) %top 1% of income
low_i=sort(income(:),'ascend')
low_i40=sum(low_i(1:ceil(length(low_i)*0.4))) %lowest 40% of income
ratioincome=top_i1/low_i40 %ratio of income

top_w=sort(wealth(:),'descend')
top_w1=sum(top_w(1:ceil(length(top_w)*0.01)))
low_w=sort(wealth(:),'ascend')
low_w40=sum(low_w(1:ceil(length(low_w)*0.4)))
ratiowealth=top_w1/low_w40

%location of mean
%gini index and lorentz curve
g=gini(WGT,earning)
