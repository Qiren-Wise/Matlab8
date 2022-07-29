function coeff = myPearson(X,Y) % xy 两组定序或定距变量
  %输入
  %X 输入的数值序列
  %Y 输入的数值序列
  
  %输出
  %coeff 两个输入数值序列XY 的相关系数

if length(X)~=length(Y)   %判断维度是否相等 长短一致
    error('两个数值数列的维数不相等');
    return;
end

fenzi = sum(X-sum(X)/length(X).*(Y-sum(y)/length(y)));  %公式分子
fenmu = sqrt(sum((X-sum(X)/length(X)).^2))*sqrt(sum((Y-sum(Y)/length(Y)).^2));
coef = fenzi/fenmu;  % 分子比分母

if length(X)>30
    coeff = coef;
elseif length(X)>4 && length(X)<30
    coeff = coef*(1+(1-coef^2)/(2*(length(X)-4))); %计算无偏相关系数加以矫正
else
    coeff = coef;
    fprintf('数据长度小于5 %8.4f\n',coeff);
end

end  %函数myPearson