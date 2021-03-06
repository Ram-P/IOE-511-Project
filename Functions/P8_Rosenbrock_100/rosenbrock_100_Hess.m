% Function that computes the Hessian of the Rosenbrock function
%
%           Input: x
%           Output: f(x)
% Code written by Northwood Team

function [H] = rosenbrock_100_Hess(x)

H = zeros(length(x));

H(1, 1) = 1200*x(1)^2 - 400*x(2) + 2;
H(1, 2) = -400*x(1); H(2, 1) = -400*x(1);
for i = 2:length(x)-1
    H(i, i) = 1200*x(i)^2 - 400*x(i+1) + 2 + 200;
    H(i, i+1) = -400*x(i);
%     H(i+1, i) = -400*x(i);
    % Even though both are pretty much the same, this makes more sense to me
    % - Shreyas
    H(i, i-1) = -400*x(i-1);
end
H(100, 99) = -400*x(99);
H(100, 100) = 200;

end