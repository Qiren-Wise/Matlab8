function mySpesrman

if length(X)~=length(Y)
    error('������ֵ���е�ά�������');
    return;
end

N = length(X);     %�õ����г���
Xrank = zeros(1,N);%�洢X�и�Ԫ�ص�����
Yrank = zeros(1,N);

%����Xrank�еĸ���ֵ
for i=1:N
    cont1 = 1;  %��¼�����ض�Ԫ�ص�Ԫ�ظ���
    cont2 = -1; %���Ԫ�ظ���
    for j = 1:N
        if X(i)  <  X(j)
            cont1 = cont1+1;
        elseif X(i) == X(j);
            cont2 = cont2+1;
        end
    end
    Xrank(i) = cont1+mean([0:cont2]);
end

%����Yrank�еĸ���
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
    
    %���ò�ֵȼ��������У����м���˹Ƥ��ѷ�ȼ����ϵ��
    fenzi = 6*sum((Xrank-Yrank).^2);
    fenmu = N*(N^2-1);
    coeff = 1-fenzi/fenmu;
    
end %����mySpearmean����