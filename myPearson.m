function coeff = myPearson(X,Y) % xy ���鶨��򶨾����
  %����
  %X �������ֵ����
  %Y �������ֵ����
  
  %���
  %coeff ����������ֵ����XY �����ϵ��

if length(X)~=length(Y)   %�ж�ά���Ƿ���� ����һ��
    error('������ֵ���е�ά�������');
    return;
end

fenzi = sum(X-sum(X)/length(X).*(Y-sum(y)/length(y)));  %��ʽ����
fenmu = sqrt(sum((X-sum(X)/length(X)).^2))*sqrt(sum((Y-sum(Y)/length(Y)).^2));
coef = fenzi/fenmu;  % ���ӱȷ�ĸ

if length(X)>30
    coeff = coef;
elseif length(X)>4 && length(X)<30
    coeff = coef*(1+(1-coef^2)/(2*(length(X)-4))); %������ƫ���ϵ�����Խ���
else
    coeff = coef;
    fprintf('���ݳ���С��5 %8.4f\n',coeff);
end

end  %����myPearson