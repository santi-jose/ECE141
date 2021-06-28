%ECE 141 Project #5
%Jose Santiago

%load xData and yData
load xData
load yData

%calculate xData and yData means
disp('mean(xData.Data):')
m_x = mean(xData.Data);
disp(m_x)
disp('mean(yData.Data):')
m_y = mean(yData.Data);
disp(m_y)

%calculate xData dn yData SD's
disp('std(xData.Data):')
s_x = std(xData.Data);
disp(s_x)
disp('std(yData.Data):')
s_y = std(yData.Data);
disp(s_y)

