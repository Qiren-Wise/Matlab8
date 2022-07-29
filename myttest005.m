function ttest = myttest005(X,Y)

if Y<=2
    error('�������ϵ��������������');
    return;
end

if X == NaN
    ttest = X;
    return;
end

r2 = myPearson(X,Y); %����pearsonϵ��
[m,n] = size(Y)
Z = m-2;%������ɶ�

tvalue= abs(r2/(sqrt((1-r2^2)/2)));  %����

if Z==1
    tnorm = 12.71;  %���ɶ�
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
        
    