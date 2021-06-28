%ECE 141 Project 4
%Jose Santiago

%Part c: Show the plot with the velocity and velocity reference
Array = csvread('velocity_graphs.csv',2,0);
time = Array(:, 1);
vRef = Array(:, 2);
vMes = Array(:, 3);

figure(1)
plot(time, vRef)
xlabel('Time')
ylabel('Velocity')

hold on

%figure(2)
plot(time, vMes)
legend('vRef','vMes')