% IOE 511/MATH 562, University of Michigan
% Code written by: Albert S. Berahas

% Problem Number: 5
% Problem Name: quartic_1
% Problem Description: A quartic function. Dimension n = 4

% function that computes the function value of the quartic_1 function
function [H] = quartic_2_Hess(x)

% Matrix Q
Q = [5 1 0 0.5;
     1 4 0.5 0;
     0 0.5 3 0;
     0.5 0 0 2];
 
% Set sigma value
sigma = 1e4;

% compute function value
% H = eye(4) + (sigma/2)*(x'*Q*x)*eye(4) + (sigma/2)*(x*x')*Q;

H = eye(4) + sigma*(x'*Q*x)*Q + 2*sigma*(Q*x)*(Q*x)';

end