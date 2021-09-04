z = [1 2 9 4 5]
x = length(z) % finding length of array

a = z(3)   %finding index of array
z(3)=3 
z = 1:10 % given value to the array from 1 to 10
z = 1:2:20 % given incrimental value
 
% matrixs
 m = [1 2 3;4 5 6;7 8 9]  %simple matrix
 m'  %Transpose of matrix
 c = max(max(m)) %maximum value of matrix
 v = min(min(m))  %minimum value of matrix
 [e vac] = eig(m) %eighen value