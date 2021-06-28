%ECE 141 Project 2
%Jose Santiago

%Part 1_b
%Plot Degree vs Time @ theta(0) = 45degrees
Array = csvread('Part1_b_position.csv',2,0);
time = Array(:, 1);
degrees = Array(:, 2);

figure(1)
plot(time, degrees)
title('Part 1b')
xlabel('Time')
ylabel('Degrees')

%Part 1_c
%plot theta
Array3 = csvread('Part1_c_position.csv',2,0);
time3 = Array3(:, 1);
degrees3 = Array3(:, 2);

figure(2)
plot(time3, degrees3)
title('Part 1c')
xlabel('Time')
ylabel('Degrees')

%Part 2_c
%Plot position and thrust graphs of stable system
Array1 = csvread('Part2_c_position.csv',2,0);
Array2 = csvread('Part2_c_thrust.csv',3,0);

time1 = Array1(:,1);
degrees1 = Array1(:,2);

time2 = Array2(:, 1);
thrust = Array2(:, 2);

figure(3)
plot(time1, degrees1)
title('Part 2c Position')
xlabel('Time')
ylabel('Degrees')

figure(4)
plot(time2, thrust)
title('Part 2c Thrust')
xlabel('Time')
ylabel('Thrust')

%Part 2d position and thrust plot about 60 degrees
%Position
Array4 = csvread('Part2_d_position.csv',2,0);
time4 = Array4(:, 1);
degrees4 = Array4(:, 2);

figure(5)
plot(time4, degrees4)
title('Part 2d Position')
xlabel('Time')
ylabel('Degrees')

%Thrust
Array5 = csvread('Part2_d_thrust.csv',3,0);
time5 = Array5(:, 1);
thrust1 = Array5(:, 2);

figure(6)
plot(time5, thrust1)
title('Part 2d Thrust')
xlabel('Time')
ylabel('Thrust')

%Part 2e position plot
Array6 = csvread('Part2_e_position.csv',2,0);
time6 = Array6(:, 1);
degrees6 = Array6(:, 2);

figure(7)
plot(time6, degrees6)
title('Part 2e Position')
xlabel('Time')
ylabel('Degrees')

%Thrust
Array7 = csvread('Part2_e_thrust.csv',3,0);
time7 = Array7(:, 1);
thrust2 = Array7(:, 2);

figure(8)
plot(time7, thrust2)
title('Part 2e Thrust')
xlabel('Time')
ylabel('Thrust')
