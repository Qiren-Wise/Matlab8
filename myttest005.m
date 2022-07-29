function ttest = myttest005(X,Y)

if Y<=2
    error('计算相关系数的样本量不够');
    return;
end

if X == NaN
    ttest = X;
    return;
end

r2 = myPearson(X,Y); %计算pearson系数
[m,n] = size(Y)
Z = m-2;%求出自由度

tvalue= abs(r2/(sqrt((1-r2^2)/2)));  %检验

if Z==1
    tnorm = 12.71;  %自由度
    if tvalue>tnorm
        ttest = Z;
    else
        ttest = NaN;
    end
elseif Z==2
    tnorm = 4.30;
    if tvalue>tnorm
        ttest = Z;
    else
        ttest = NaN;
    end
    elsrif Z==3
    tnorm = 3.18;
    if tvalue>tnorm
        ttest = Z;
    else 
        ttest = NaN;
    end
elseif Z==4
    tnorm = 2.78;
    if tvalue>tnorm
        ttest = Z;
    else 
        ttest = NaN;
    end
elseif Z==5
    tnorm = 2.57;
    if tvalue > tnorm
        ttest=Z;
    else 
        ttest = NaN;
    end
        
    