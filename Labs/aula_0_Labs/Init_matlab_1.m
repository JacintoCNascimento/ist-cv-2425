
clear all

% -----------  Example 1 ---------------- %
% diffrent ways to write amatrix 

A = [1 2 3; 4 5 6; 7 8 9];

B = [1 2 3
     4 5 6
     7 8 9]; % at the nd you van have ";" or not - see the difference 
 
% -----------  Example 2 ---------------- %
% Accessing the contens of an array

C = [1 2 3 4 5]

C(1)
C(end)

% -----------  Example 3 ---------------- %
% changing the contenst of an array/matrix

D = [365 3 6 98 4 ]
D(2:4) = 0

D = [365 3 6 98 4 ]
D([2:4]) = 0

E = [ 325 76 98 3; 32 7 43 8 ; 2 65 9 5 ]
E(2:4) = 0              

E = [ 325 76 98 3; 32 7 43 8 ; 2 65 9 5 ]
E(:,2:4) = 0 

% -----------  Example 4 ---------------- %
% spacial forms of particular arrays

F = ones(3,1)
F'

H = zeros(4,4)




