%ECE 141 Project #5
%Jose Santiago

%Plot Root Locus for Part (a)

%define transfer function variable s
s = tf('s');

%use s to write transfer function G
G = (9.81)/(s^2);

%print transfer function
G

%Plot transfer function with rltool
rltool(G);