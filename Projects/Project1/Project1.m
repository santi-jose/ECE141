% ECE 141 Project 1
% Jose Santiago

% Part (b)
A = ((0.005)^2)*pi;
g = 9.81;

Y = linspace(0.05,0.15,100);
q_in = sqrt(2*(A^2)*g*Y);

figure(1);
plot(Y, q_in);

ylabel('q-in');
xlabel('Y');
title('Part B');

% Part (c)
S = ((0.1)^2)*pi;
rangeY = linspace (0.05, 0.15, 30);
qin = 1:30; %define qin array
for i = 1: 1: 30 %redefine qin array with different rangeY values
    qin(i) = sqrt(2*(A^2)*g*rangeY(i)); %define qin
end

%declare a and b arrays
a = 1:30;
b = 1:30;
H = [];

figure(2);
for k = 1: 1: 30 %redfine arrays a and b according to part (a)
    a(k) = -(((A^2)*g)/(((S^2)-(A^2))*(sqrt((((A^2)*((qin(k))^2))/(((S^2)-(A^2))^2))+((2*(A^2)*g*rangeY(k))/((S^2)-(A^2)))))));
    b(k) = (S/((S^2)-(A^2)))-(((A^2)*qin(k))/(((S^2)-(A^2))*sqrt((((A^2)*((qin(k))^2))/(((S^2)-(A^2))^2))+((2*(A^2)*g*rangeY(k))/((S^2)-(A^2))))));
    %plot bode graphs
    H = tf(b(k), [1 -a(k)]);
    bode(H);
    hold on;
end

%part (d)

%Minimum and Maximum DC gains
gains = 1:30;
pole = [];

for k = 1:30
    gains(k) = b(k)/(-a(k));
end

mingain = min(gains);
maxgain = max(gains);

mingain = mag2db(mingain);
maxgain = mag2db(maxgain);

disp('Minimum DCgain');
disp(mingain);

disp('Maximum DCgain');
disp(maxgain);

%poles



