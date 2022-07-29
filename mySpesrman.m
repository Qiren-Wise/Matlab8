function mySpesrman

if length(X)~=length(Y)
    error('两个数值数列的维数不相等');
    return;
end

N = length(X);     %得到序列长度
Xrank = zeros(1,N);%存储X中各元素的排行
Yrank = zeros(1,N);

%计算Xrank中的各个值
for i=1:N
    cont1 = 1;  %记录大于特定元素的元素个数
    cont2 = -1; %相等元素个数
    for j = 1:N
        if X(i)  <  X(j)
            cont1 = cont1+1;
        elseif X(i) == X(j);
            cont2 = cont2+1;
        end
    end
    Xrank(i) = cont1+mean([0:cont2]);
end

%计算Yrank中的个数
for i = 1:N
    cont1 = 1;
    cont2 = -1;
    for j=1:N
        if Y(i) < Y(j)
            cont1  = cont1+1;
        elseif Y(i) == Y(j)
            cont2 = cont2+1;
        end
        Yrank(i) = cont1+mean([0:cont2]);
    end
    
    %利用差分等级（或排行）序列计算斯皮尔逊等级相关系数
    fenzi = 6*sum((Xrank-Yrank).^2);
    fenmu = N*(N^2-1);
    coeff = 1-fenzi/fenmu;
    
end %函数mySpearmean结束