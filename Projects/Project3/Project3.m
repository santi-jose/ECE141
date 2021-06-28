%ECE 141 Project 3
%Jose Santiago

%Part d: Provide the position and thrust graphs

%Plot position graph
Array = csvread('PID_part_d_position.csv',2,0);
time = Array(:, 1);
degrees = Array(:, 2);

figure(1)
plot(time, degrees)
title('Part D: Position')
xlabel('Time')
ylabel('Degrees')

%Plot thrust graph
Array1 = csvread('PID_part_d_thrust.csv',3,0);
time1 = Array1(:, 1);
thrust = Array1(:, 2);

figure(2)
plot(time1, thrust)
title('Part D: Thrust')
xlabel('Time')
ylabel('Thrust')
